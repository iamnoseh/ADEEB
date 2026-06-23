import 'package:adeeb/app/router/route_names.dart';
import 'package:adeeb/features/onboarding/widgets/onboarding_animated_background.dart';
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
    with SingleTickerProviderStateMixin {
  late final AnimationController _entranceController;

  late final Animation<double> _backgroundFade;
  late final Animation<double> _logoFade;
  late final Animation<Offset> _logoSlide;
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

    _backgroundFade = _curved(0.00, 0.28, Curves.easeOut);
    _logoFade = _curved(0.08, 0.34, Curves.easeOut);
    _logoSlide = Tween<Offset>(
      begin: const Offset(0, -0.16),
      end: Offset.zero,
    ).animate(_curved(0.08, 0.40, Curves.easeOutCubic));
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
    super.dispose();
  }

  Widget _buildStaticIcon({
    required String imagePath,
    required Alignment alignment,
    required double size,
  }) {
    return Align(
      alignment: alignment,
      child: Image.asset(
        imagePath,
        width: size,
        height: size,
        fit: BoxFit.contain,
        filterQuality: FilterQuality.high,
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
                final heroHeight = (height * (compact ? 0.34 : 0.43)).clamp(
                  210.0,
                  compact ? 300.0 : 410.0,
                );
                final iconSize = compact ? 86.0 : 106.0;
                final mascotHeight = heroHeight * (compact ? 0.92 : 0.96);

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
                            Image.asset(
                              'images/1.png',
                              height: mascotHeight,
                              fit: BoxFit.contain,
                              filterQuality: FilterQuality.high,
                              semanticLabel: 'ADEEB mascot',
                            ),
                            _buildStaticIcon(
                              imagePath: 'images/icon_cap.png',
                              alignment: Alignment(
                                -0.98,
                                compact ? -0.54 : -0.48,
                              ),
                              size: iconSize,
                            ),
                            _buildStaticIcon(
                              imagePath: 'images/icon_target.png',
                              alignment: Alignment(
                                0.98,
                                compact ? -0.42 : -0.36,
                              ),
                              size: iconSize,
                            ),
                            _buildStaticIcon(
                              imagePath: 'images/icon_language.png',
                              alignment: Alignment(
                                -0.92,
                                compact ? 0.54 : 0.58,
                              ),
                              size: iconSize,
                            ),
                            _buildStaticIcon(
                              imagePath: 'images/icon_trophy.png',
                              alignment: Alignment(
                                0.92,
                                compact ? 0.46 : 0.52,
                              ),
                              size: iconSize,
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

