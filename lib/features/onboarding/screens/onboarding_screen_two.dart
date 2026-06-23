import 'dart:math' as math;

import 'package:adeeb/features/onboarding/widgets/onboarding_animated_background.dart';
import 'package:adeeb/features/onboarding/widgets/onboarding_floating_icon.dart';
import 'package:adeeb/features/onboarding/widgets/onboarding_logo.dart';
import 'package:adeeb/features/onboarding/widgets/onboarding_pagination.dart';
import 'package:adeeb/features/onboarding/widgets/onboarding_primary_button.dart';
import 'package:adeeb/features/onboarding/widgets/onboarding_title_section.dart';
import 'package:flutter/material.dart';

class OnboardingScreenTwo extends StatefulWidget {
  const OnboardingScreenTwo({super.key});

  @override
  State<OnboardingScreenTwo> createState() => _OnboardingScreenTwoState();
}

class _OnboardingScreenTwoState extends State<OnboardingScreenTwo>
    with TickerProviderStateMixin {
  late final AnimationController _entranceController;
  late final AnimationController _floatController;

  late final Animation<double> _backgroundFade;
  late final Animation<double> _logoFade;
  late final Animation<Offset> _logoSlide;
  late final Animation<double> _mascotFade;
  late final Animation<Offset> _mascotSlide;
  late final Animation<double> _mascotScale;
  late final Animation<double> _titleFade;
  late final Animation<Offset> _titleSlide;
  late final Animation<double> _subtitleFade;
  late final Animation<Offset> _subtitleSlide;
  late final Animation<double> _paginationFade;
  late final Animation<double> _buttonFade;
  late final Animation<Offset> _buttonSlide;

  @override
  void initState() {
    super.initState();
    _entranceController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 1180),
    )..forward();
    _floatController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 2800),
    )..repeat(reverse: true);

    _backgroundFade = _curved(0.00, 0.28, Curves.easeOut);
    _logoFade = _curved(0.06, 0.30, Curves.easeOut);
    _logoSlide = Tween<Offset>(
      begin: const Offset(0, -0.14),
      end: Offset.zero,
    ).animate(_curved(0.06, 0.34, Curves.easeOutCubic));
    _mascotFade = _curved(0.14, 0.50, Curves.easeOut);
    _mascotSlide = Tween<Offset>(
      begin: const Offset(0, 0.10),
      end: Offset.zero,
    ).animate(_curved(0.14, 0.58, Curves.easeOutCubic));
    _mascotScale = TweenSequence<double>([
      TweenSequenceItem(
        tween: Tween<double>(
          begin: 0.95,
          end: 1.02,
        ).chain(CurveTween(curve: Curves.easeOutCubic)),
        weight: 70,
      ),
      TweenSequenceItem(
        tween: Tween<double>(
          begin: 1.02,
          end: 1,
        ).chain(CurveTween(curve: Curves.easeInOut)),
        weight: 30,
      ),
    ]).animate(_curved(0.16, 0.70, Curves.linear));
    _titleFade = _curved(0.54, 0.76, Curves.easeOut);
    _titleSlide = _upSlide(0.54, 0.78);
    _subtitleFade = _curved(0.62, 0.84, Curves.easeOut);
    _subtitleSlide = _upSlide(0.62, 0.86);
    _paginationFade = _curved(0.72, 0.92, Curves.easeOut);
    _buttonFade = _curved(0.78, 1.00, Curves.easeOut);
    _buttonSlide = _upSlide(0.78, 1.00);
  }

  Animation<double> _curved(double begin, double end, Curve curve) {
    return CurvedAnimation(
      parent: _entranceController,
      curve: Interval(begin, end, curve: curve),
    );
  }

  Animation<Offset> _upSlide(double begin, double end) {
    return Tween<Offset>(
      begin: const Offset(0, 0.16),
      end: Offset.zero,
    ).animate(_curved(begin, end, Curves.easeOutCubic));
  }

  void _handleContinue() {
    // TODO: Navigate to onboarding screen 3 when implemented.
  }

  @override
  void dispose() {
    _entranceController.dispose();
    _floatController.dispose();
    super.dispose();
  }

  Widget _buildMascot(double height, bool compact) {
    final mascotHeight = height * (compact ? 0.72 : 0.78);

    return AnimatedBuilder(
      animation: _floatController,
      builder: (context, child) {
        final dy = math.sin(_floatController.value * math.pi) * -4;
        return Transform.translate(offset: Offset(0, dy), child: child);
      },
      child: FadeTransition(
        opacity: _mascotFade,
        child: SlideTransition(
          position: _mascotSlide,
          child: ScaleTransition(
            scale: _mascotScale,
            child: Image.asset(
              'images/3.png',
              height: mascotHeight,
              fit: BoxFit.contain,
              filterQuality: FilterQuality.high,
            ),
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        fit: StackFit.expand,
        children: [
          FadeTransition(
            opacity: _backgroundFade,
            child: const OnboardingAnimatedBackground(),
          ),
          SafeArea(
            child: LayoutBuilder(
              builder: (context, constraints) {
                final height = constraints.maxHeight;
                final width = constraints.maxWidth;
                final compact = height < 820;
                final heroHeight = (height * (compact ? 0.36 : 0.44)).clamp(
                  250.0,
                  compact ? 350.0 : 430.0,
                );

                return Padding(
                  padding: EdgeInsets.fromLTRB(
                    width * 0.07,
                    compact ? 26 : 34,
                    width * 0.07,
                    compact ? 42 : 50,
                  ),
                  child: Column(
                    children: [
                      OnboardingLogo(
                        fade: _logoFade,
                        slide: _logoSlide,
                        height: compact ? 64 : 94,
                      ),
                      SizedBox(height: compact ? 8 : 14),
                      SizedBox(
                        height: heroHeight,
                        child: Stack(
                          clipBehavior: Clip.none,
                          alignment: Alignment.center,
                          children: [
                            _buildMascot(heroHeight, compact),
                            OnboardingFloatingIcon(
                              imagePath: 'images/xp.png',
                              entrance: _curved(0.30, 0.54, Curves.easeOutBack),
                              floatController: _floatController,
                              alignment: Alignment(
                                -0.92,
                                compact ? -0.42 : -0.38,
                              ),
                              amplitude: 4,
                              rotationTurns: -0.007,
                              size: compact ? 74 : 92,
                            ),
                            OnboardingFloatingIcon(
                              imagePath: 'images/coin.png',
                              entrance: _curved(0.36, 0.60, Curves.easeOutBack),
                              floatController: _floatController,
                              alignment: Alignment(
                                0.94,
                                compact ? -0.30 : -0.26,
                              ),
                              amplitude: -5,
                              rotationTurns: 0.008,
                              size: compact ? 74 : 92,
                            ),
                            OnboardingFloatingIcon(
                              imagePath: 'images/streak.png',
                              entrance: _curved(0.42, 0.66, Curves.easeOutBack),
                              floatController: _floatController,
                              alignment: Alignment(
                                -0.88,
                                compact ? 0.40 : 0.44,
                              ),
                              amplitude: 5,
                              rotationTurns: 0.006,
                              size: compact ? 74 : 92,
                            ),
                            OnboardingFloatingIcon(
                              imagePath: 'images/league.png',
                              entrance: _curved(0.48, 0.72, Curves.easeOutBack),
                              floatController: _floatController,
                              alignment: Alignment(
                                0.88,
                                compact ? 0.34 : 0.40,
                              ),
                              amplitude: -4,
                              rotationTurns: -0.006,
                              size: compact ? 74 : 92,
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: compact ? 26 : 34),
                      ConstrainedBox(
                        constraints: BoxConstraints(
                          maxWidth: compact ? 332 : 372,
                        ),
                        child: OnboardingTitleSection(
                          titleFade: _titleFade,
                          titleSlide: _titleSlide,
                          subtitleFade: _subtitleFade,
                          subtitleSlide: _subtitleSlide,
                          compact: compact,
                          title: 'Ҳар рӯз пешравӣ кун',
                          subtitle:
                              'Миссияҳоро иҷро кун, XP ва AdeebCoin гир, ба лигаҳои боло баро.',
                          titleFontSize: compact ? 22 : 30,
                          subtitleFontSize: compact ? 14 : 16,
                          subtitleFontWeight: FontWeight.w500,
                          titleHeight: 1.08,
                          subtitleHeight: 1.4,
                        ),
                      ),
                      const Spacer(),
                      FadeTransition(
                        opacity: _paginationFade,
                        child: const OnboardingPagination(activeIndex: 1),
                      ),
                      SizedBox(height: compact ? 8 : 16),
                      FadeTransition(
                        opacity: _buttonFade,
                        child: SlideTransition(
                          position: _buttonSlide,
                          child: OnboardingPrimaryButton(onPressed: _handleContinue),
                        ),
                      ),
                    ],
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
