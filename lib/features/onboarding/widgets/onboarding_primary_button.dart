import 'package:adeeb/app/theme/app_colors.dart';
import 'package:adeeb/app/theme/app_radius.dart';
import 'package:flutter/material.dart';

class OnboardingPrimaryButton extends StatefulWidget {
  const OnboardingPrimaryButton({
    this.label = 'Давом додан',
    this.onPressed,
    super.key,
  });

  final String label;
  final VoidCallback? onPressed;

  @override
  State<OnboardingPrimaryButton> createState() =>
      _OnboardingPrimaryButtonState();
}

class _OnboardingPrimaryButtonState extends State<OnboardingPrimaryButton> {
  var _pressed = false;

  void _setPressed(bool value) {
    if (_pressed == value) return;
    setState(() => _pressed = value);
  }

  @override
  Widget build(BuildContext context) {
    const lift = 7.0;

    return GestureDetector(
      behavior: HitTestBehavior.opaque,
      onTapDown: (_) => _setPressed(true),
      onTapCancel: () => _setPressed(false),
      onTapUp: (_) {
        _setPressed(false);
        widget.onPressed?.call();
      },
      child: SizedBox(
        height: 64,
        child: Stack(
          children: [
            Positioned(
              left: 0,
              right: 0,
              top: lift,
              bottom: 0,
              child: DecoratedBox(
                decoration: BoxDecoration(
                  color: const Color(0xFF8B6818),
                  borderRadius: BorderRadius.circular(AppRadius.pill),
                  boxShadow: const [
                    BoxShadow(
                      color: Color(0x2E12100B),
                      blurRadius: 18,
                      offset: Offset(0, 10),
                    ),
                  ],
                ),
              ),
            ),
            AnimatedPositioned(
              duration: const Duration(milliseconds: 90),
              curve: Curves.easeOut,
              left: 0,
              right: 0,
              top: _pressed ? lift : 0,
              bottom: _pressed ? 0 : lift,
              child: AnimatedScale(
                duration: const Duration(milliseconds: 90),
                curve: Curves.easeOut,
                scale: _pressed ? 0.992 : 1,
                child: DecoratedBox(
                  decoration: BoxDecoration(
                    gradient: const LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors: [Color(0xFF242015), Color(0xFF100E0A)],
                    ),
                    borderRadius: BorderRadius.circular(AppRadius.pill),
                    border: Border.all(color: AppColors.gold, width: 1.4),
                    boxShadow: const [
                      BoxShadow(
                        color: Color(0x33FFFFFF),
                        blurRadius: 7,
                        offset: Offset(0, -2),
                      ),
                    ],
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(left: 22, right: 6),
                    child: Row(
                      children: [
                        const Icon(
                          Icons.auto_awesome,
                          color: AppColors.gold,
                          size: 19,
                        ),
                        const SizedBox(width: 10),
                        Expanded(
                          child: Text(
                            widget.label,
                            textAlign: TextAlign.center,
                            style: const TextStyle(
                              color: Colors.white,
                              fontSize: 17,
                              fontWeight: FontWeight.w900,
                              letterSpacing: 0,
                            ),
                          ),
                        ),
                        Container(
                          width: 42,
                          height: 42,
                          decoration: BoxDecoration(
                            gradient: const LinearGradient(
                              begin: Alignment.topLeft,
                              end: Alignment.bottomRight,
                              colors: [Color(0xFFF1C64E), Color(0xFFD19B21)],
                            ),
                            shape: BoxShape.circle,
                            boxShadow: [
                              BoxShadow(
                                color: Colors.white.withValues(alpha: 0.28),
                                blurRadius: 6,
                                offset: const Offset(-2, -2),
                              ),
                            ],
                          ),
                          child: const Icon(
                            Icons.arrow_forward_rounded,
                            color: AppColors.ink,
                            size: 26,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
