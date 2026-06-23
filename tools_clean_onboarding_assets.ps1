Add-Type -AssemblyName System.Drawing

function Test-BgColor([System.Drawing.Color]$c) {
  $max = [Math]::Max($c.R, [Math]::Max($c.G, $c.B))
  $min = [Math]::Min($c.R, [Math]::Min($c.G, $c.B))
  $brightness = ($c.R + $c.G + $c.B) / 3.0
  return ($c.A -gt 0 -and $brightness -ge 145 -and ($max - $min) -le 35)
}

function Clean-Asset([string]$sourcePath, [string]$targetPath) {
  $src = [System.Drawing.Bitmap]::FromFile((Resolve-Path $sourcePath).Path)
  $bmp = [System.Drawing.Bitmap]::new($src)
  $src.Dispose()

  $w = $bmp.Width
  $h = $bmp.Height
  $visited = [bool[]]::new($w * $h)
  $queue = [System.Collections.Generic.Queue[System.Drawing.Point]]::new()

  for ($x = 0; $x -lt $w; $x++) {
    foreach ($y in @(0, ($h - 1))) {
      $idx = ($y * $w) + $x
      if (-not $visited[$idx]) {
        $visited[$idx] = $true
        $c = $bmp.GetPixel($x, $y)
        if (Test-BgColor $c) {
          $queue.Enqueue([System.Drawing.Point]::new($x, $y))
        }
      }
    }
  }

  for ($y = 0; $y -lt $h; $y++) {
    foreach ($x in @(0, ($w - 1))) {
      $idx = ($y * $w) + $x
      if (-not $visited[$idx]) {
        $visited[$idx] = $true
        $c = $bmp.GetPixel($x, $y)
        if (Test-BgColor $c) {
          $queue.Enqueue([System.Drawing.Point]::new($x, $y))
        }
      }
    }
  }

  while ($queue.Count -gt 0) {
    $p = $queue.Dequeue()
    $c = $bmp.GetPixel($p.X, $p.Y)
    $bmp.SetPixel($p.X, $p.Y, [System.Drawing.Color]::FromArgb(0, $c.R, $c.G, $c.B))

    foreach ($delta in @(@(-1, 0), @(1, 0), @(0, -1), @(0, 1))) {
      $nx = $p.X + $delta[0]
      $ny = $p.Y + $delta[1]

      if ($nx -ge 0 -and $ny -ge 0 -and $nx -lt $w -and $ny -lt $h) {
        $idx = ($ny * $w) + $nx
        if (-not $visited[$idx]) {
          $visited[$idx] = $true
          $nc = $bmp.GetPixel($nx, $ny)
          if (Test-BgColor $nc) {
            $queue.Enqueue([System.Drawing.Point]::new($nx, $ny))
          }
        }
      }
    }
  }

  $bmp.Save((Join-Path (Get-Location) $targetPath), [System.Drawing.Imaging.ImageFormat]::Png)
  $bmp.Dispose()
  Write-Output "cleaned $sourcePath -> $targetPath"
}

Clean-Asset 'images/xp.png' 'images/xp_transparent.png'
Clean-Asset 'images/coin.png' 'images/coin_transparent.png'
Clean-Asset 'images/streak.png' 'images/streak_transparent.png'
Clean-Asset 'images/league.png' 'images/league_transparent.png'
