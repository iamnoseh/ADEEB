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
    this.fadeColors = _defaultFadeColors,
    this.fadeStops = _defaultFadeStops,
    super.key,
  });

  /// Гузариши пешфарзи замина ба сафед (барои экранҳои онбординг).
  static const List<Color> _defaultFadeColors = <Color>[
    Color(0x00FFFFFF),
    Color(0x00FFFFFF),
    Color(0xEFFFFFFF),
    Color(0xFFFFFFFF),
  ];
  static const List<double> _defaultFadeStops = <double>[0, 0.44, 0.74, 1];

  /// Тарзи ҷойгиршавии тасвири замина. Барои дидани тамоми паҳноии таркиб
  /// (мисли дизайн) `BoxFit.fitWidth`-ро истифода кунед.
  final BoxFit fit;

  /// Кадом қисми тасвири замина намоён бошад.
  final AlignmentGeometry imageAlignment;

  /// Рангҳои гузариши амудӣ ба сафед (поёни замина).
  final List<Color> fadeColors;

  /// Нуқтаҳои таваққуфи гузариш (ба `fadeColors` мувофиқ).
  final List<double> fadeStops;

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
        DecoratedBox(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: fadeColors,
              stops: fadeStops,
            ),
          ),
        ),
      ],
    );
  }
}
