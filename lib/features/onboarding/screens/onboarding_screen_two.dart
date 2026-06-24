import 'package:adeeb/app/router/route_names.dart';
import 'package:adeeb/features/onboarding/widgets/onboarding_animated_background.dart';
import 'package:adeeb/features/onboarding/widgets/onboarding_floating_icon.dart';
import 'package:adeeb/features/onboarding/widgets/onboarding_logo.dart';
import 'package:adeeb/features/onboarding/widgets/onboarding_pagination.dart';
import 'package:adeeb/features/onboarding/widgets/onboarding_primary_button.dart';
import 'package:adeeb/features/onboarding/widgets/onboarding_title_section.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

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
  late final Animation<double> _cardsFade;
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
      duration: const Duration(milliseconds: 3300),
    )..repeat();

    _backgroundFade = _curved(0.00, 0.28, Curves.easeOut);
    _logoFade = _curved(0.06, 0.30, Curves.easeOut);
    _logoSlide = Tween<Offset>(
      begin: const Offset(0, -0.14),
      end: Offset.zero,
    ).animate(_curved(0.06, 0.34, Curves.easeOutCubic));
    _cardsFade = _curved(0.24, 0.62, Curves.easeOutCubic);
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

  void _handleContinue(BuildContext context) {
    context.go(RouteNames.onboardingThree);
  }

  @override
  void dispose() {
    _floatController.dispose();
    _entranceController.dispose();
    super.dispose();
  }

  Widget _buildMascot(double height, bool compact) {
    final mascotHeight = height * (compact ? 1.28 : 1.22);

    return Image.asset(
      'images/3.png',
      height: mascotHeight,
      fit: BoxFit.contain,
      filterQuality: FilterQuality.high,
      semanticLabel: 'ADEEB mascot',
    );
  }

  Widget _buildRewardCard({
    required String imagePath,
    required Alignment alignment,
    required double size,
    required double phase,
    required double amplitude,
    required double rotationTurns,
  }) {
    return OnboardingFloatingIcon(
      imagePath: imagePath,
      entrance: _cardsFade,
      floatController: _floatController,
      alignment: alignment,
      amplitude: amplitude,
      rotationTurns: rotationTurns,
      size: size,
      phase: phase,
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
                final heroHeight = (height * (compact ? 0.40 : 0.48)).clamp(
                  280.0,
                  compact ? 390.0 : 460.0,
                );
                final cardSize = compact ? 112.0 : 134.0;

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
                            // TODO: Replace these cleaned fallback assets with the original source exports
                            // once real transparent PNG reward cards are available from design.
                            _buildRewardCard(
                              imagePath: 'images/xp_transparent.png',
                              alignment: Alignment(
                                -1.06,
                                compact ? -0.38 : -0.34,
                              ),
                              size: cardSize,
                              phase: 0.04,
                              amplitude: compact ? 4.5 : 6,
                              rotationTurns: 0.004,
                            ),
                            _buildRewardCard(
                              imagePath: 'images/coin_transparent.png',
                              alignment: Alignment(
                                1.06,
                                compact ? -0.26 : -0.22,
                              ),
                              size: cardSize,
                              phase: 0.32,
                              amplitude: compact ? 5.5 : 7,
                              rotationTurns: -0.004,
                            ),
                            _buildRewardCard(
                              imagePath: 'images/streak_card_transparent.png',
                              alignment: Alignment(
                                -1.00,
                                compact ? 0.40 : 0.44,
                              ),
                              size: cardSize,
                              phase: 0.58,
                              amplitude: compact ? 5 : 6.5,
                              rotationTurns: -0.0045,
                            ),
                            _buildRewardCard(
                              imagePath: 'images/league_transparent.png',
                              alignment: Alignment(1.00, compact ? 0.34 : 0.40),
                              size: cardSize,
                              phase: 0.80,
                              amplitude: compact ? 4.5 : 6,
                              rotationTurns: 0.0045,
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: compact ? 24 : 32),
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
                          child: OnboardingPrimaryButton(
                            onPressed: () => _handleContinue(context),
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
