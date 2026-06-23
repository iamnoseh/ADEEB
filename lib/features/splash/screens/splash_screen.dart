import 'dart:async';

import 'package:adeeb/app/router/route_names.dart';
import 'package:adeeb/features/splash/widgets/splash_background.dart';
import 'package:adeeb/features/splash/widgets/splash_logo_section.dart';
import 'package:adeeb/features/splash/widgets/splash_mascot.dart';
import 'package:adeeb/features/splash/widgets/splash_tagline.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  static const animationDuration = Duration(milliseconds: 2600);
  static const navigationDelay = Duration(milliseconds: 2900);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen>
    with SingleTickerProviderStateMixin {
  late final AnimationController _controller;

  late final Animation<double> _backgroundFade;
  late final Animation<double> _logoFade;
  late final Animation<double> _logoScale;
  late final Animation<double> _wordmarkFade;
  late final Animation<Offset> _wordmarkSlide;
  late final Animation<double> _taglineFade;
  late final Animation<double> _dividerFade;
  late final Animation<double> _mascotFade;
  late final Animation<Offset> _mascotSlide;
  late final Animation<double> _mascotScale;
  Timer? _navigationTimer;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: SplashScreen.animationDuration,
    );

    _backgroundFade = _curved(0.00, 0.30, Curves.easeOut);
    _logoFade = _curved(0.14, 0.42, Curves.easeOut);
    _logoScale = Tween<double>(
      begin: 0.94,
      end: 1,
    ).animate(_curved(0.14, 0.48, Curves.easeOutCubic));
    _wordmarkFade = _curved(0.30, 0.58, Curves.easeOut);
    _wordmarkSlide = Tween<Offset>(
      begin: const Offset(0, 0.14),
      end: Offset.zero,
    ).animate(_curved(0.30, 0.62, Curves.easeOutCubic));
    _taglineFade = _curved(0.48, 0.72, Curves.easeOut);
    _dividerFade = _curved(0.58, 0.82, Curves.easeOut);
    _mascotFade = _curved(0.62, 0.90, Curves.easeOut);
    _mascotSlide = Tween<Offset>(
      begin: const Offset(0, 0.20),
      end: Offset.zero,
    ).animate(_curved(0.62, 0.94, Curves.easeOutCubic));
    _mascotScale = TweenSequence<double>([
      TweenSequenceItem(
        tween: Tween<double>(
          begin: 0.96,
          end: 1.015,
        ).chain(CurveTween(curve: Curves.easeOutCubic)),
        weight: 70,
      ),
      TweenSequenceItem(
        tween: Tween<double>(
          begin: 1.015,
          end: 1,
        ).chain(CurveTween(curve: Curves.easeInOut)),
        weight: 30,
      ),
    ]).animate(_curved(0.70, 1.00, Curves.linear));

    _controller.forward();
    _navigationTimer = Timer(SplashScreen.navigationDelay, () {
      if (!mounted) return;
      context.go(RouteNames.onboarding);
    });
  }

  Animation<double> _curved(double begin, double end, Curve curve) {
    return CurvedAnimation(
      parent: _controller,
      curve: Interval(begin, end, curve: curve),
    );
  }

  @override
  void dispose() {
    _navigationTimer?.cancel();
    _controller.dispose();
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
            child: const SplashBackground(),
          ),
          SafeArea(
            child: LayoutBuilder(
              builder: (context, constraints) {
                final height = constraints.maxHeight;
                final compact = height < 680;
                final logoWidth = (height * 0.18).clamp(96.0, 140.0);
                final wordmarkWidth = (height * 0.33).clamp(178.0, 250.0);
                final mascotHeight = (height * 0.36).clamp(210.0, 330.0);
                final horizontalPadding = compact ? 28.0 : 36.0;

                return Padding(
                  padding: EdgeInsets.symmetric(horizontal: horizontalPadding),
                  child: Column(
                    children: [
                      SizedBox(
                        height: compact ? height * 0.045 : height * 0.09,
                      ),
                      SplashLogoSection(
                        logoFade: _logoFade,
                        logoScale: _logoScale,
                        wordmarkFade: _wordmarkFade,
                        wordmarkSlide: _wordmarkSlide,
                        logoWidth: logoWidth,
                        wordmarkWidth: wordmarkWidth,
                      ),
                      SizedBox(height: compact ? 12 : 22),
                      SplashTagline(
                        taglineFade: _taglineFade,
                        dividerFade: _dividerFade,
                      ),
                      const Spacer(),
                      SplashMascot(
                        fade: _mascotFade,
                        slide: _mascotSlide,
                        scale: _mascotScale,
                        height: mascotHeight,
                      ),
                      SizedBox(height: compact ? 12 : 28),
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
