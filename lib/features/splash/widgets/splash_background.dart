import 'package:flutter/material.dart';

class SplashBackground extends StatelessWidget {
  const SplashBackground({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: const [
        Positioned(
          top: -140,
          right: -120,
          child: _GoldenOrb(size: 320, opacity: 0.18),
        ),
        Positioned(
          left: -160,
          bottom: -130,
          child: _GoldenOrb(size: 360, opacity: 0.14),
        ),
        Positioned.fill(child: _GoldenWaveLayer()),
      ],
    );
  }
}

class _GoldenOrb extends StatelessWidget {
  const _GoldenOrb({required this.size, required this.opacity});

  final double size;
  final double opacity;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: size,
      height: size,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        gradient: RadialGradient(
          colors: [
            const Color(0xFFC99A2E).withValues(alpha: opacity),
            const Color(0xFFFFE9A8).withValues(alpha: opacity * 0.55),
            Colors.transparent,
          ],
        ),
      ),
    );
  }
}

class _GoldenWaveLayer extends StatelessWidget {
  const _GoldenWaveLayer();

  @override
  Widget build(BuildContext context) {
    return CustomPaint(painter: _GoldenWavePainter());
  }
}

class _GoldenWavePainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final topPaint = Paint()
      ..shader = const LinearGradient(
        begin: Alignment.topRight,
        end: Alignment.bottomLeft,
        colors: [Color(0x33F2C85B), Color(0x00F2C85B)],
      ).createShader(Rect.fromLTWH(0, 0, size.width, size.height * 0.42));

    final topPath = Path()
      ..moveTo(size.width * 0.40, 0)
      ..cubicTo(
        size.width * 0.72,
        size.height * 0.02,
        size.width * 0.76,
        size.height * 0.18,
        size.width,
        size.height * 0.17,
      )
      ..lineTo(size.width, 0)
      ..close();

    final bottomPaint = Paint()
      ..shader =
          const LinearGradient(
            begin: Alignment.bottomLeft,
            end: Alignment.topRight,
            colors: [Color(0x2ED7A534), Color(0x00D7A534)],
          ).createShader(
            Rect.fromLTWH(
              0,
              size.height * 0.58,
              size.width,
              size.height * 0.42,
            ),
          );

    final bottomPath = Path()
      ..moveTo(0, size.height * 0.84)
      ..cubicTo(
        size.width * 0.18,
        size.height * 0.76,
        size.width * 0.34,
        size.height * 0.96,
        size.width * 0.62,
        size.height,
      )
      ..lineTo(0, size.height)
      ..close();

    final curvePaint = Paint()
      ..color = const Color(0x22C99A2E)
      ..style = PaintingStyle.stroke
      ..strokeWidth = 1.4;

    final curvePath = Path()
      ..moveTo(size.width * 0.10, size.height * 0.24)
      ..cubicTo(
        size.width * 0.32,
        size.height * 0.14,
        size.width * 0.70,
        size.height * 0.20,
        size.width * 0.92,
        size.height * 0.08,
      );

    canvas
      ..drawPath(topPath, topPaint)
      ..drawPath(bottomPath, bottomPaint)
      ..drawPath(curvePath, curvePaint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => false;
}
