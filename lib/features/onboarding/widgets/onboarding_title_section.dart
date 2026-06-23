import 'dart:async';

import 'package:adeeb/app/theme/app_colors.dart';
import 'package:flutter/material.dart';

class OnboardingTitleSection extends StatefulWidget {
  const OnboardingTitleSection({
    required this.titleFade,
    required this.titleSlide,
    required this.subtitleFade,
    required this.subtitleSlide,
    required this.compact,
    super.key,
  });

  final Animation<double> titleFade;
  final Animation<Offset> titleSlide;
  final Animation<double> subtitleFade;
  final Animation<Offset> subtitleSlide;
  final bool compact;

  @override
  State<OnboardingTitleSection> createState() => _OnboardingTitleSectionState();
}

class _OnboardingTitleSectionState extends State<OnboardingTitleSection> {
  static const _title = 'Омӯзишро ба сатҳи нав бардор';
  static const _subtitle =
      'Тестҳо, ММТ, луғатомӯзӣ, дуэл ва лига — ҳамааш дар як ҷо.';

  Timer? _typingTimer;
  Timer? _cursorTimer;
  var _titleCount = 0;
  var _subtitleCount = 0;
  var _showCursor = true;
  var _typingFinished = false;

  @override
  void initState() {
    super.initState();
    _cursorTimer = Timer.periodic(const Duration(milliseconds: 420), (_) {
      if (!mounted || _typingFinished) return;
      setState(() => _showCursor = !_showCursor);
    });

    Future<void>.delayed(const Duration(milliseconds: 720), () {
      if (!mounted) return;
      _typingTimer = Timer.periodic(const Duration(milliseconds: 38), (_) {
        if (!mounted) return;
        final titleLength = _title.characters.length;
        final subtitleLength = _subtitle.characters.length;

        setState(() {
          _showCursor = true;
          if (_titleCount < titleLength) {
            _titleCount++;
            return;
          }
          if (_subtitleCount < subtitleLength) {
            _subtitleCount++;
            return;
          }
          _typingFinished = true;
          _showCursor = false;
          _typingTimer?.cancel();
          _cursorTimer?.cancel();
        });
      });
    });
  }

  @override
  void dispose() {
    _typingTimer?.cancel();
    _cursorTimer?.cancel();
    super.dispose();
  }

  Widget _reservedText({
    required String fullText,
    required String visibleText,
    required TextStyle? style,
    required bool showCursor,
  }) {
    final cursorStyle = style?.copyWith(color: AppColors.gold);

    return Stack(
      alignment: Alignment.center,
      children: [
        Opacity(
          opacity: 0,
          child: Text(
            '$fullText|',
            textAlign: TextAlign.center,
            style: style,
          ),
        ),
        Text.rich(
          TextSpan(
            style: style,
            children: [
              TextSpan(text: visibleText),
              if (showCursor) TextSpan(text: '|', style: cursorStyle),
            ],
          ),
          textAlign: TextAlign.center,
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    final titleText = _title.characters.take(_titleCount).toString();
    final subtitleText = _subtitle.characters.take(_subtitleCount).toString();
    final titleTypingDone = _titleCount >= _title.characters.length;
    final subtitleTypingStarted = _subtitleCount > 0;
    final titleStyle = Theme.of(context).textTheme.headlineMedium?.copyWith(
      color: AppColors.ink,
      fontSize: widget.compact ? 22 : 30,
      fontWeight: FontWeight.w900,
      height: 1.12,
      letterSpacing: 0,
    );
    final subtitleStyle = Theme.of(context).textTheme.bodyLarge?.copyWith(
      color: AppColors.muted,
      fontSize: widget.compact ? 12.5 : 15.5,
      height: widget.compact ? 1.32 : 1.45,
      fontWeight: FontWeight.w600,
      letterSpacing: 0,
    );

    return Column(
      children: [
        FadeTransition(
          opacity: widget.titleFade,
          child: SlideTransition(
            position: widget.titleSlide,
            child: _reservedText(
              fullText: _title,
              visibleText: titleText,
              style: titleStyle,
              showCursor:
                  !_typingFinished && !subtitleTypingStarted && _showCursor,
            ),
          ),
        ),
        SizedBox(height: widget.compact ? 6 : 14),
        FadeTransition(
          opacity: widget.subtitleFade,
          child: SlideTransition(
            position: widget.subtitleSlide,
            child: _reservedText(
              fullText: _subtitle,
              visibleText: subtitleText,
              style: subtitleStyle,
              showCursor: titleTypingDone && !_typingFinished && _showCursor,
            ),
          ),
        ),
      ],
    );
  }
}
