import 'package:flutter/material.dart';

/// Серии зарди тиллоиро каме мекоҳонад ва андаке равшантар мекунад, то
/// замина мулоим ва ба дизайн наздик бошад. Сатрҳо ҳар кадом ба 1.0 ҷамъ
/// мешаванд (сафед сафед мемонад); сутуни охир (+10) равшании мулоим аст.
/// Барои тундтар: рақамҳои диагоналро ба 1.0 наздиктар кунед.
const ColorFilter _softGoldFilter = ColorFilter.matrix(<double>[
  0.725, 0.250, 0.025, 0, 10, //
  0.075, 0.900, 0.025, 0, 10, //
  0.075, 0.250, 0.675, 0, 10, //
  0, 0, 0, 1, 0, //
]);

class OnboardingAnimatedBackground extends StatelessWidget {
  const OnboardingAnimatedBackground({
    this.fit = BoxFit.cover,
    this.imageAlignment = Alignment.topCenter,
    super.key,
  });

  /// Тарзи ҷойгиршавии тасвири замина. Барои дидани тамоми паҳноии таркиб
  /// (мисли дизайн) `BoxFit.fitWidth`-ро истифода кунед.
  final BoxFit fit;

  /// Кадом қисми тасвири замина намоён бошад.
  final AlignmentGeometry imageAlignment;

  @override
  Widget build(BuildContext context) {
    return Stack(
      fit: StackFit.expand,
      children: [
        ColorFiltered(
          colorFilter: _softGoldFilter,
          child: Image.asset(
            'images/background_onboarding_1.png',
            fit: fit,
            alignment: imageAlignment,
            filterQuality: FilterQuality.high,
          ),
        ),
        const DecoratedBox(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [
                Color(0x00FFFFFF),
                Color(0x00FFFFFF),
                Color(0xEFFFFFFF),
                Color(0xFFFFFFFF),
              ],
              stops: [0, 0.44, 0.74, 1],
            ),
          ),
        ),
      ],
    );
  }
}
