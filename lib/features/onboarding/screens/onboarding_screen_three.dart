import 'dart:math' as math;

import 'package:adeeb/app/router/route_names.dart';
import 'package:adeeb/features/onboarding/widgets/onboarding_animated_background.dart';
import 'package:adeeb/features/onboarding/widgets/onboarding_logo.dart';
import 'package:adeeb/features/onboarding/widgets/onboarding_pagination.dart';
import 'package:adeeb/features/onboarding/widgets/onboarding_primary_button.dart';
import 'package:adeeb/features/onboarding/widgets/onboarding_title_section.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class OnboardingScreenThree extends StatefulWidget {
  const OnboardingScreenThree({super.key});

  @override
  State<OnboardingScreenThree> createState() => _OnboardingScreenThreeState();
}

class _OnboardingScreenThreeState extends State<OnboardingScreenThree>
    with TickerProviderStateMixin {
  late final AnimationController _entranceController;
  late final AnimationController _floatController;
  late final Animation<double> _backgroundFade;
  late final Animation<double> _logoFade;
  late final Animation<Offset> _logoSlide;
  late final Animation<double> _heroFade;
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
      duration: const Duration(milliseconds: 3400),
    )..repeat();

    _backgroundFade = _curved(0.00, 0.28, Curves.easeOut);
    _logoFade = _curved(0.06, 0.30, Curves.easeOut);
    _logoSlide = Tween<Offset>(
      begin: const Offset(0, -0.14),
      end: Offset.zero,
    ).animate(_curved(0.06, 0.34, Curves.easeOutCubic));
    _heroFade = _curved(0.22, 0.62, Curves.easeOutCubic);
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

  @override
  void dispose() {
    _floatController.dispose();
    _entranceController.dispose();
    super.dispose();
  }

  Widget _positionedAsset({
    required String path,
    required double size,
    required double left,
    required double top,
    required double phase,
    required double amplitude,
    required double rotationTurns,
    double scaleWave = 0.012,
  }) {
    return Positioned(
      left: left,
      top: top,
      width: size,
      height: size,
      child: AnimatedBuilder(
        animation: Listenable.merge([_heroFade, _floatController]),
        builder: (context, child) {
          final wave = math.sin((_floatController.value + phase) * math.pi * 2);

          return Opacity(
            opacity: _heroFade.value.clamp(0.0, 1.0).toDouble(),
            child: Transform.translate(
              offset: Offset(0, wave * amplitude),
              child: Transform.rotate(
                angle: wave * rotationTurns * math.pi * 2,
                child: Transform.scale(
                  scale: 0.90 + (_heroFade.value * 0.10) + (wave * scaleWave),
                  child: child,
                ),
              ),
            ),
          );
        },
        child: Image.asset(
          path,
          fit: BoxFit.contain,
          filterQuality: FilterQuality.high,
        ),
      ),
    );
  }

  Widget _staticPositionedAsset({
    required String path,
    required double size,
    required double left,
    required double top,
  }) {
    return Positioned(
      left: left,
      top: top,
      width: size,
      height: size,
      child: FadeTransition(
        opacity: _heroFade,
        child: Image.asset(
          path,
          fit: BoxFit.contain,
          filterQuality: FilterQuality.high,
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
                final logoHeight = compact ? 66.0 : 92.0;
                final heroHeight = (height * (compact ? 0.42 : 0.50))
                    .clamp(285.0, compact ? 380.0 : 500.0)
                    .toDouble();
                final mascotCanvas = (width * (compact ? 1.08 : 1.12))
                    .clamp(390.0, compact ? 450.0 : 560.0)
                    .toDouble();
                final cardCanvas = (width * (compact ? 1.10 : 1.18))
                    .clamp(400.0, compact ? 470.0 : 590.0)
                    .toDouble();
                final borderCanvas = (width * (compact ? 1.08 : 1.14))
                    .clamp(400.0, compact ? 460.0 : 570.0)
                    .toDouble();

                return Padding(
                  padding: EdgeInsets.fromLTRB(
                    width * 0.055,
                    compact ? 20 : 28,
                    width * 0.055,
                    compact ? 34 : 42,
                  ),
                  child: Column(
                    children: [
                      OnboardingLogo(
                        fade: _logoFade,
                        slide: _logoSlide,
                        height: logoHeight,
                      ),
                      SizedBox(height: compact ? 0 : 6),
                      SizedBox(
                        height: heroHeight,
                        width: double.infinity,
                        child: LayoutBuilder(
                          builder: (context, heroConstraints) {
                            final heroWidth = heroConstraints.maxWidth;
                            final mascotLeft = (heroWidth - mascotCanvas) / 2;
                            final mascotTop = (heroHeight - mascotCanvas) / 2;
                            final cardLeft = (heroWidth - cardCanvas) / 2;
                            final cardTop = (heroHeight - cardCanvas) / 2;
                            final borderLeft = (heroWidth - borderCanvas) / 2;
                            final borderTop = (heroHeight - borderCanvas) / 2;

                            return Stack(
                              clipBehavior: Clip.none,
                              children: [
                                _positionedAsset(
                                  path: 'images/лига.png',
                                  size: cardCanvas,
                                  left: cardLeft - width * 0.24,
                                  top: cardTop - heroHeight * 0.10,
                                  phase: 0.06,
                                  amplitude: compact ? 4.5 : 6,
                                  rotationTurns: -0.004,
                                ),
                                _positionedAsset(
                                  path: 'images/дуел.png',
                                  size: cardCanvas,
                                  left: cardLeft + width * 0.24,
                                  top: cardTop - heroHeight * 0.10,
                                  phase: 0.34,
                                  amplitude: compact ? 5.5 : 7,
                                  rotationTurns: 0.0045,
                                ),
                                _positionedAsset(
                                  path: 'images/тест.png',
                                  size: cardCanvas,
                                  left: cardLeft - width * 0.27,
                                  top: cardTop + heroHeight * 0.17,
                                  phase: 0.58,
                                  amplitude: compact ? 5 : 6.5,
                                  rotationTurns: 0.004,
                                ),
                                _positionedAsset(
                                  path: 'images/натича.png',
                                  size: cardCanvas,
                                  left: cardLeft + width * 0.27,
                                  top: cardTop + heroHeight * 0.17,
                                  phase: 0.80,
                                  amplitude: compact ? 4.5 : 6,
                                  rotationTurns: -0.004,
                                ),
                                _staticPositionedAsset(
                                  path: 'images/pr3.png',
                                  size: mascotCanvas,
                                  left: mascotLeft,
                                  top: mascotTop + heroHeight * 0.04,
                                ),
                                _staticPositionedAsset(
                                  path: 'images/бордер.png',
                                  size: borderCanvas,
                                  left: borderLeft,
                                  top: borderTop + heroHeight * 0.40,
                                ),
                              ],
                            );
                          },
                        ),
                      ),
                      SizedBox(height: compact ? 20 : 28),
                      ConstrainedBox(
                        constraints: BoxConstraints(
                          maxWidth: compact ? 350 : 430,
                        ),
                        child: OnboardingTitleSection(
                          titleFade: _titleFade,
                          titleSlide: _titleSlide,
                          subtitleFade: _subtitleFade,
                          subtitleSlide: _subtitleSlide,
                          compact: compact,
                          title: 'Ба имтиҳон бо боварӣ омода шав',
                          subtitle:
                              'Аз тестҳои фаннӣ то дуэл бо дӯстон — ҳама чиз барои муваффақият.',
                          titleFontSize: compact ? 27 : 40,
                          subtitleFontSize: compact ? 15 : 20,
                          subtitleFontWeight: FontWeight.w500,
                          titleHeight: 1.08,
                          subtitleHeight: 1.32,
                        ),
                      ),
                      const Spacer(),
                      FadeTransition(
                        opacity: _paginationFade,
                        child: const OnboardingPagination(activeIndex: 2),
                      ),
                      SizedBox(height: compact ? 8 : 16),
                      FadeTransition(
                        opacity: _buttonFade,
                        child: SlideTransition(
                          position: _buttonSlide,
                          child: OnboardingPrimaryButton(
                            label: 'Оғоз',
                            onPressed: () => context.go(RouteNames.login),
                          ),
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
