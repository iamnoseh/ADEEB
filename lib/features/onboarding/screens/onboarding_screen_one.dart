import 'package:adeeb/app/router/route_names.dart';
import 'package:adeeb/features/onboarding/widgets/onboarding_animated_background.dart';
import 'package:adeeb/features/onboarding/widgets/onboarding_floating_icon.dart';
import 'package:adeeb/features/onboarding/widgets/onboarding_hero_mascot.dart';
import 'package:adeeb/features/onboarding/widgets/onboarding_logo.dart';
import 'package:adeeb/features/onboarding/widgets/onboarding_pagination.dart';
import 'package:adeeb/features/onboarding/widgets/onboarding_primary_button.dart';
import 'package:adeeb/features/onboarding/widgets/onboarding_title_section.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({super.key});

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen>
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
      duration: const Duration(milliseconds: 1150),
    )..forward();
    _floatController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 2600),
    )..repeat(reverse: true);

    _backgroundFade = _curved(0.00, 0.28, Curves.easeOut);
    _logoFade = _curved(0.08, 0.34, Curves.easeOut);
    _logoSlide = Tween<Offset>(
      begin: const Offset(0, -0.16),
      end: Offset.zero,
    ).animate(_curved(0.08, 0.40, Curves.easeOutCubic));
    _mascotFade = _curved(0.16, 0.54, Curves.easeOut);
    _mascotSlide = Tween<Offset>(
      begin: const Offset(0, 0.10),
      end: Offset.zero,
    ).animate(_curved(0.16, 0.62, Curves.easeOutCubic));
    _mascotScale = TweenSequence<double>([
      TweenSequenceItem(
        tween: Tween<double>(
          begin: 0.96,
          end: 1.018,
        ).chain(CurveTween(curve: Curves.easeOutCubic)),
        weight: 72,
      ),
      TweenSequenceItem(
        tween: Tween<double>(
          begin: 1.018,
          end: 1,
        ).chain(CurveTween(curve: Curves.easeInOut)),
        weight: 28,
      ),
    ]).animate(_curved(0.18, 0.72, Curves.linear));
    _titleFade = _curved(0.56, 0.76, Curves.easeOut);
    _titleSlide = _upSlide(0.56, 0.78);
    _subtitleFade = _curved(0.64, 0.84, Curves.easeOut);
    _subtitleSlide = _upSlide(0.64, 0.86);
    _paginationFade = _curved(0.74, 0.92, Curves.easeOut);
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
    _entranceController.dispose();
    _floatController.dispose();
    super.dispose();
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
                final heroHeight = (height * (compact ? 0.34 : 0.43)).clamp(
                  210.0,
                  compact ? 300.0 : 410.0,
                );

                return Padding(
                  padding: EdgeInsets.fromLTRB(
                    width * 0.07,
                    compact ? 30 : 38,
                    width * 0.07,
                    compact ? 44 : 52,
                  ),
                  child: Column(
                    children: [
                      OnboardingLogo(
                        fade: _logoFade,
                        slide: _logoSlide,
                        height: compact ? 68 : 100,
                      ),
                      SizedBox(height: compact ? 2 : 8),
                      SizedBox(
                        height: heroHeight,
                        child: Stack(
                          clipBehavior: Clip.none,
                          alignment: Alignment.center,
                          children: [
                            OnboardingHeroMascot(
                              fade: _mascotFade,
                              slide: _mascotSlide,
                              scale: _mascotScale,
                              floatController: _floatController,
                            ),
                            OnboardingFloatingIcon(
                              imagePath: 'images/icon_cap.png',
                              entrance: _curved(0.34, 0.56, Curves.easeOutBack),
                              floatController: _floatController,
                              alignment: Alignment(
                                -0.92,
                                compact ? -0.48 : -0.42,
                              ),
                              amplitude: 5,
                              rotationTurns: -0.008,
                              size: compact ? 62 : 80,
                            ),
                            OnboardingFloatingIcon(
                              imagePath: 'images/icon_target.png',
                              entrance: _curved(0.40, 0.62, Curves.easeOutBack),
                              floatController: _floatController,
                              alignment: Alignment(
                                0.92,
                                compact ? -0.36 : -0.30,
                              ),
                              amplitude: -4,
                              rotationTurns: 0.009,
                              size: compact ? 62 : 80,
                            ),
                            OnboardingFloatingIcon(
                              imagePath: 'images/icon_language.png',
                              entrance: _curved(0.46, 0.68, Curves.easeOutBack),
                              floatController: _floatController,
                              alignment: Alignment(
                                -0.88,
                                compact ? 0.42 : 0.46,
                              ),
                              amplitude: 4,
                              rotationTurns: 0.007,
                              size: compact ? 62 : 80,
                            ),
                            OnboardingFloatingIcon(
                              imagePath: 'images/icon_trophy.png',
                              entrance: _curved(0.52, 0.74, Curves.easeOutBack),
                              floatController: _floatController,
                              alignment: Alignment(0.88, compact ? 0.36 : 0.42),
                              amplitude: -5,
                              rotationTurns: -0.007,
                              size: compact ? 62 : 80,
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: compact ? 30 : 42),
                      OnboardingTitleSection(
                        titleFade: _titleFade,
                        titleSlide: _titleSlide,
                        subtitleFade: _subtitleFade,
                        subtitleSlide: _subtitleSlide,
                        compact: compact,
                      ),
                      const Spacer(),
                      FadeTransition(
                        opacity: _paginationFade,
                        child: const OnboardingPagination(activeIndex: 0),
                      ),
                      SizedBox(height: compact ? 5 : 18),
                      FadeTransition(
                        opacity: _buttonFade,
                        child: SlideTransition(
                          position: _buttonSlide,
                          child: OnboardingPrimaryButton(
                            onPressed: () => context.go(RouteNames.onboardingTwo),
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
