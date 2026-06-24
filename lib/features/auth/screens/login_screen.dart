import 'dart:async';

import 'package:adeeb/app/router/route_names.dart';
import 'package:adeeb/app/theme/app_colors.dart';
import 'package:adeeb/app/theme/app_radius.dart';
import 'package:adeeb/features/onboarding/widgets/onboarding_animated_background.dart';
import 'package:adeeb/features/onboarding/widgets/onboarding_primary_button.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  static const _welcomeTitle = 'Хуш омадед!';
  static const _welcomeSubtitle =
      'Ба платформаи ADEEB баргардед ва\nдониши худро идома диҳед.';

  Timer? _typingTimer;
  Timer? _cursorTimer;
  var _titleCount = 0;
  var _subtitleCount = 0;
  var _showCursor = true;
  var _typingFinished = false;
  var _obscurePassword = true;

  @override
  void initState() {
    super.initState();
    _cursorTimer = Timer.periodic(const Duration(milliseconds: 420), (_) {
      if (!mounted || _typingFinished) return;
      setState(() => _showCursor = !_showCursor);
    });

    Future<void>.delayed(const Duration(milliseconds: 420), () {
      if (!mounted) return;
      _typingTimer = Timer.periodic(const Duration(milliseconds: 36), (_) {
        if (!mounted) return;
        final titleLength = _welcomeTitle.characters.length;
        final subtitleLength = _welcomeSubtitle.characters.length;

        setState(() {
          _showCursor = true;
          if (_titleCount < titleLength) {
            _titleCount++;
            return;
          }
          if (_subtitleCount < subtitleLength) {
            _subtitleCount++;
            return;
          }
          _typingFinished = true;
          _showCursor = false;
          _typingTimer?.cancel();
          _cursorTimer?.cancel();
        });
      });
    });
  }

  @override
  void dispose() {
    _typingTimer?.cancel();
    _cursorTimer?.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        fit: StackFit.expand,
        children: [
          // Тамоми паҳноии таркиби тиллоӣ намоён шавад (мисли дизайн):
          // тарафҳо бурида намешаванд, поён ба сафед мегузарад.
          const OnboardingAnimatedBackground(
            fit: BoxFit.fitWidth,
            // Сафедро баландтар мебарорем, то аз шиками персонаж ба поён
            // (зери «Хуш омадед!») замина тоза сафед бошад.
            fadeColors: [
              Color(0x00FFFFFF),
              Color(0x00FFFFFF),
              Color(0xF7FFFFFF),
              Color(0xFFFFFFFF),
            ],
            fadeStops: [0, 0.26, 0.4, 0.5],
          ),
          SafeArea(
            child: LayoutBuilder(
              builder: (context, constraints) {
                final height = constraints.maxHeight;
                final width = constraints.maxWidth;
                final compact = height < 760;
                final sidePadding = width * 0.085;
                final logoHeight = compact ? 58.0 : 80.0;
                final heroHeight = (height * (compact ? 0.22 : 0.27))
                    .clamp(155.0, compact ? 195.0 : 245.0)
                    .toDouble();
                final titleText = _welcomeTitle.characters
                    .take(_titleCount)
                    .toString();
                final subtitleText = _welcomeSubtitle.characters
                    .take(_subtitleCount)
                    .toString();
                final titleTypingDone =
                    _titleCount >= _welcomeTitle.characters.length;

                final topPad = compact ? 10.0 : 20.0;
                final bottomPad = compact ? 12.0 : 22.0;

                return SingleChildScrollView(
                  padding: EdgeInsets.fromLTRB(
                    sidePadding,
                    topPad,
                    sidePadding,
                    bottomPad,
                  ),
                  child: ConstrainedBox(
                    constraints: BoxConstraints(
                      minHeight: height - topPad - bottomPad,
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Image.asset(
                          'images/logo_onboarding_clean.png',
                          height: logoHeight,
                          fit: BoxFit.contain,
                          filterQuality: FilterQuality.high,
                          semanticLabel: 'ADEEB',
                        ),
                        SizedBox(height: compact ? 2 : 6),
                        SizedBox(
                          height: heroHeight,
                          width: double.infinity,
                          child: Transform.translate(
                            // Персонажро каме поён мегузорем, то шиками ӯ
                            // дар заминаи сафед нишинад.
                            offset: Offset(0, heroHeight * 0.20),
                            child: OverflowBox(
                              maxWidth: width * 1.24,
                              maxHeight: heroHeight * 1.52,
                              child: Image.asset(
                                'images/пр4.png',
                                height: heroHeight * (compact ? 1.58 : 1.68),
                                fit: BoxFit.contain,
                                filterQuality: FilterQuality.high,
                                semanticLabel: 'ADEEB mascot',
                              ),
                            ),
                          ),
                        ),
                        SizedBox(height: compact ? 2 : 6),
                        _FrostedLoginPanel(
                          compact: compact,
                          child: Column(
                            children: [
                              _WelcomeTitle(
                                visibleText: titleText,
                                showCursor:
                                    !_typingFinished &&
                                    _subtitleCount == 0 &&
                                    _showCursor,
                              ),
                              _GoldUnderline(width: compact ? 174 : 204),
                              _TypingSubtitle(
                                fullText: _welcomeSubtitle,
                                visibleText: subtitleText,
                                showCursor:
                                    titleTypingDone &&
                                    !_typingFinished &&
                                    _showCursor,
                                compact: compact,
                              ),
                              SizedBox(height: compact ? 11 : 15),
                              const _LoginTextField(
                                icon: Icons.person_outline_rounded,
                                hintText: 'Рақами телефон ё email',
                                keyboardType: TextInputType.emailAddress,
                              ),
                              SizedBox(height: compact ? 8 : 10),
                              _LoginTextField(
                                icon: Icons.lock_outline_rounded,
                                hintText: 'Рамз',
                                obscureText: _obscurePassword,
                                trailing: IconButton(
                                  onPressed: () {
                                    setState(() {
                                      _obscurePassword = !_obscurePassword;
                                    });
                                  },
                                  icon: Icon(
                                    _obscurePassword
                                        ? Icons.visibility_outlined
                                        : Icons.visibility_off_outlined,
                                    color: AppColors.gold,
                                    size: 20,
                                  ),
                                ),
                              ),
                              Align(
                                alignment: Alignment.centerRight,
                                child: TextButton(
                                  style: TextButton.styleFrom(
                                    foregroundColor: AppColors.goldDark,
                                    padding: const EdgeInsets.only(
                                      top: 4,
                                      bottom: 2,
                                    ),
                                    tapTargetSize:
                                        MaterialTapTargetSize.shrinkWrap,
                                  ),
                                  onPressed: () {},
                                  child: const Text(
                                    'Фаромӯш кардед?',
                                    style: TextStyle(
                                      fontSize: 12.5,
                                      fontWeight: FontWeight.w700,
                                      letterSpacing: 0,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(height: compact ? 20 : 30),
                        OnboardingPrimaryButton(
                          label: 'Ворид шудан',
                          onPressed: () => context.go(RouteNames.home),
                        ),
                        SizedBox(height: compact ? 12 : 16),
                        const _SocialDivider(),
                        SizedBox(height: compact ? 10 : 14),
                        const Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            _SocialButton.google(),
                            SizedBox(width: 18),
                            _SocialButton.facebook(),
                            SizedBox(width: 18),
                            _SocialButton.apple(),
                          ],
                        ),
                        SizedBox(height: compact ? 8 : 12),
                        const _RegisterPrompt(),
                      ],
                    ),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}

class _WelcomeTitle extends StatelessWidget {
  const _WelcomeTitle({required this.visibleText, required this.showCursor});

  final String visibleText;
  final bool showCursor;

  @override
  Widget build(BuildContext context) {
    const goldPrefix = 'Хуш ';
    final goldLength = goldPrefix.length;
    final goldText = visibleText.length <= goldLength
        ? visibleText
        : visibleText.substring(0, goldLength);
    final inkText = visibleText.length <= goldLength
        ? ''
        : visibleText.substring(goldLength);

    return Text.rich(
      TextSpan(
        children: [
          TextSpan(
            text: goldText,
            style: const TextStyle(color: AppColors.goldDark),
          ),
          TextSpan(text: inkText),
          if (showCursor)
            const TextSpan(
              text: '|',
              style: TextStyle(color: AppColors.gold),
            ),
        ],
      ),
      textAlign: TextAlign.center,
      style: const TextStyle(
        color: AppColors.ink,
        fontSize: 32,
        fontWeight: FontWeight.w900,
        height: 1,
        letterSpacing: 0,
      ),
      strutStyle: const StrutStyle(
        fontSize: 32,
        height: 1,
        forceStrutHeight: true,
      ),
      textHeightBehavior: const TextHeightBehavior(
        applyHeightToFirstAscent: false,
        applyHeightToLastDescent: false,
      ),
      maxLines: 1,
      overflow: TextOverflow.visible,
    );
  }
}

class _TypingSubtitle extends StatelessWidget {
  const _TypingSubtitle({
    required this.fullText,
    required this.visibleText,
    required this.showCursor,
    required this.compact,
  });

  final String fullText;
  final String visibleText;
  final bool showCursor;
  final bool compact;

  @override
  Widget build(BuildContext context) {
    final style = TextStyle(
      color: AppColors.charcoal,
      fontSize: compact ? 12.5 : 14,
      fontWeight: FontWeight.w500,
      height: 1.18,
      letterSpacing: 0,
    );

    return Stack(
      alignment: Alignment.center,
      children: [
        Opacity(
          opacity: 0,
          child: Text('$fullText|', textAlign: TextAlign.center, style: style),
        ),
        Text.rich(
          TextSpan(
            style: style,
            children: [
              TextSpan(text: visibleText),
              if (showCursor)
                const TextSpan(
                  text: '|',
                  style: TextStyle(color: AppColors.gold),
                ),
            ],
          ),
          textAlign: TextAlign.center,
        ),
      ],
    );
  }
}

class _GoldUnderline extends StatelessWidget {
  const _GoldUnderline({required this.width});

  final double width;

  @override
  Widget build(BuildContext context) {
    const assetSize = 1254.0;
    const contentX = 406.0;
    const contentY = 600.0;
    const contentWidth = 445.0;
    const contentHeight = 61.0;
    final scale = width / contentWidth;
    final renderedSize = assetSize * scale;
    final height = contentHeight * scale;

    return SizedBox(
      width: width,
      height: height,
      child: ClipRect(
        child: Stack(
          clipBehavior: Clip.hardEdge,
          children: [
            Positioned(
              left: -contentX * scale,
              top: -contentY * scale,
              width: renderedSize,
              height: renderedSize,
              child: Image.asset(
                'images/лл.png',
                fit: BoxFit.contain,
                filterQuality: FilterQuality.high,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class _FrostedLoginPanel extends StatelessWidget {
  const _FrostedLoginPanel({required this.compact, required this.child});

  final bool compact;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    // Дизайни ҳадаф панели мудаввари сафед надорад — матн ва майдонҳо
    // мустақиман дар заминаи нозуки тиллоӣ-кремӣ ҷойгир мешаванд.
    return Padding(
      padding: EdgeInsets.fromLTRB(0, compact ? 11 : 13, 0, 2),
      child: SizedBox(width: double.infinity, child: child),
    );
  }
}

class _LoginTextField extends StatelessWidget {
  const _LoginTextField({
    required this.icon,
    required this.hintText,
    this.keyboardType,
    this.obscureText = false,
    this.trailing,
  });

  final IconData icon;
  final String hintText;
  final TextInputType? keyboardType;
  final bool obscureText;
  final Widget? trailing;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 48,
      decoration: BoxDecoration(
        color: Colors.white.withValues(alpha: 0.94),
        borderRadius: BorderRadius.circular(AppRadius.md + 2),
        border: Border.all(color: const Color(0xFFEBDCC0), width: 1.1),
        boxShadow: const [
          BoxShadow(
            color: Color(0x1A8B6818),
            blurRadius: 18,
            offset: Offset(0, 8),
          ),
          BoxShadow(
            color: Color(0x66FFFFFF),
            blurRadius: 8,
            offset: Offset(0, -2),
          ),
        ],
      ),
      child: TextField(
        keyboardType: keyboardType,
        obscureText: obscureText,
        cursorColor: AppColors.gold,
        style: const TextStyle(
          color: AppColors.ink,
          fontSize: 14,
          fontWeight: FontWeight.w600,
          letterSpacing: 0,
        ),
        decoration: InputDecoration(
          border: InputBorder.none,
          prefixIcon: Icon(icon, color: AppColors.gold, size: 23),
          suffixIcon: trailing,
          hintText: hintText,
          hintStyle: const TextStyle(
            color: Color(0xFF8D8578),
            fontSize: 13.5,
            fontWeight: FontWeight.w500,
            letterSpacing: 0,
          ),
          contentPadding: const EdgeInsets.symmetric(
            horizontal: 4,
            vertical: 15,
          ),
        ),
      ),
    );
  }
}

class _SocialDivider extends StatelessWidget {
  const _SocialDivider();

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Expanded(child: _GoldLine()),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: Text(
            'ё бо шабакаҳои иҷтимоӣ',
            style: TextStyle(
              color: AppColors.muted.withValues(alpha: 0.78),
              fontSize: 11.5,
              fontWeight: FontWeight.w600,
              letterSpacing: 0,
            ),
          ),
        ),
        const Expanded(child: _GoldLine()),
      ],
    );
  }
}

class _GoldLine extends StatelessWidget {
  const _GoldLine();

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 1,
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          colors: [Color(0x00D4A235), Color(0xFFD4A235)],
        ),
      ),
    );
  }
}

class _SocialButton extends StatelessWidget {
  const _SocialButton.google()
    : label = 'G',
      icon = null,
      color = const Color(0xFF4285F4);

  const _SocialButton.facebook()
    : label = 'f',
      icon = null,
      color = const Color(0xFF1877F2);

  const _SocialButton.apple()
    : label = null,
      icon = Icons.apple_rounded,
      color = Colors.black;

  final String? label;
  final IconData? icon;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white.withValues(alpha: 0.96),
      borderRadius: BorderRadius.circular(AppRadius.md),
      elevation: 0,
      child: InkWell(
        borderRadius: BorderRadius.circular(AppRadius.md),
        onTap: () {},
        child: Container(
          width: 40,
          height: 40,
          alignment: Alignment.center,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(AppRadius.md),
            border: Border.all(color: const Color(0xFFEBDCC0), width: 1),
            boxShadow: const [
              BoxShadow(
                color: Color(0x14745A19),
                blurRadius: 14,
                offset: Offset(0, 7),
              ),
            ],
          ),
          child: icon == null
              ? Text(
                  label!,
                  style: TextStyle(
                    color: color,
                    fontSize: label == 'f' ? 26 : 20,
                    fontWeight: FontWeight.w900,
                    height: 1,
                    letterSpacing: 0,
                  ),
                )
              : Icon(icon, color: color, size: 24),
        ),
      ),
    );
  }
}

class _RegisterPrompt extends StatelessWidget {
  const _RegisterPrompt();

  @override
  Widget build(BuildContext context) {
    return Text.rich(
      const TextSpan(
        children: [
          TextSpan(text: 'Ҳисоб надоред? '),
          TextSpan(
            text: 'Сабти ном',
            style: TextStyle(
              color: AppColors.goldDark,
              fontWeight: FontWeight.w900,
            ),
          ),
        ],
      ),
      textAlign: TextAlign.center,
      style: const TextStyle(
        color: AppColors.ink,
        fontSize: 13,
        fontWeight: FontWeight.w600,
        letterSpacing: 0,
      ),
    );
  }
}
