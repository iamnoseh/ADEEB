import 'package:adeeb/app/theme/app_colors.dart';
import 'package:adeeb/features/onboarding/widgets/onboarding_pagination.dart';
import 'package:adeeb/features/onboarding/widgets/onboarding_primary_button.dart';
import 'package:flutter/material.dart';

class OnboardingScreenTwo extends StatefulWidget {
  const OnboardingScreenTwo({super.key});

  @override
  State<OnboardingScreenTwo> createState() => _OnboardingScreenTwoState();
}

class _OnboardingScreenTwoState extends State<OnboardingScreenTwo>
    with SingleTickerProviderStateMixin {
  late final AnimationController _entranceController;
  late final Animation<double> _heroFade;
  late final Animation<Offset> _heroSlide;
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
      duration: const Duration(milliseconds: 1200),
    )..forward();

    _heroFade = _curved(0.00, 0.50, Curves.easeOut);
    _heroSlide = _upSlide(0.00, 0.50, 0.08);
    _titleFade = _curved(0.20, 0.66, Curves.easeOut);
    _titleSlide = _upSlide(0.20, 0.66, 0.16);
    _subtitleFade = _curved(0.34, 0.80, Curves.easeOut);
    _subtitleSlide = _upSlide(0.34, 0.80, 0.14);
    _paginationFade = _curved(0.46, 0.88, Curves.easeOut);
    _buttonFade = _curved(0.58, 1.00, Curves.easeOut);
    _buttonSlide = _upSlide(0.58, 1.00, 0.12);
  }

  Animation<double> _curved(double begin, double end, Curve curve) {
    return CurvedAnimation(
      parent: _entranceController,
      curve: Interval(begin, end, curve: curve),
    );
  }

  Animation<Offset> _upSlide(double begin, double end, double startY) {
    return Tween<Offset>(
      begin: Offset(0, startY),
      end: Offset.zero,
    ).animate(_curved(begin, end, Curves.easeOutCubic));
  }

  void _handleContinue() {
    // TODO: Navigate to onboarding screen 3 when implemented.
  }

  @override
  void dispose() {
    _entranceController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: LayoutBuilder(
          builder: (context, constraints) {
            final height = constraints.maxHeight;
            final width = constraints.maxWidth;
            final compact = height < 820;
            final titleSize = compact ? 22.0 : 30.0;
            final subtitleSize = compact ? 14.0 : 16.0;
            final heroFlex = compact ? 7 : 8;

            return Padding(
              padding: EdgeInsets.fromLTRB(
                width * 0.07,
                compact ? 18 : 24,
                width * 0.07,
                compact ? 42 : 50,
              ),
              child: Column(
                children: [
                  Expanded(
                    flex: heroFlex,
                    child: FadeTransition(
                      opacity: _heroFade,
                      child: SlideTransition(
                        position: _heroSlide,
                        child: Align(
                          alignment: Alignment.topCenter,
                          child: Image.asset(
                            'images/0.png',
                            width: double.infinity,
                            fit: BoxFit.contain,
                            alignment: Alignment.topCenter,
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: compact ? 18 : 26),
                  FadeTransition(
                    opacity: _titleFade,
                    child: SlideTransition(
                      position: _titleSlide,
                      child: Text(
                        'Ҳар рӯз пешравӣ кун',
                        textAlign: TextAlign.center,
                        style: Theme.of(context).textTheme.headlineMedium?.copyWith(
                          color: AppColors.ink,
                          fontSize: titleSize,
                          fontWeight: FontWeight.w900,
                          height: 1.08,
                          letterSpacing: 0,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: compact ? 8 : 12),
                  FadeTransition(
                    opacity: _subtitleFade,
                    child: SlideTransition(
                      position: _subtitleSlide,
                      child: ConstrainedBox(
                        constraints: BoxConstraints(
                          maxWidth: compact ? 320 : 360,
                        ),
                        child: Text(
                          'Миссияҳоро иҷро кун, XP ва AdeebCoin гир, ба лигаҳои боло баро.',
                          textAlign: TextAlign.center,
                          style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                            color: AppColors.muted,
                            fontSize: subtitleSize,
                            fontWeight: FontWeight.w500,
                            height: 1.4,
                            letterSpacing: 0,
                          ),
                        ),
                      ),
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
    );
  }
}
