import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';

class SingleWordClickableText extends StatelessWidget {
  final String text;
  final TextAlign textAlign;
  final TextStyle? textStyle;
  final Function(String word)? onWordPressed;

  const SingleWordClickableText(
      {super.key,
      required this.text,
      this.textAlign = TextAlign.start,
      this.textStyle,
      this.onWordPressed});

  @override
  Widget build(BuildContext context) {
    final List<String> words = text.split(' ');
    return RichText(
      text: TextSpan(
          // For each word, create a TextSpan to handle the pressed event separately
          children: words.map((String word) {
            return TextSpan(
                text: '$word ',
                recognizer: TapGestureRecognizer()
                  ..onTap = () => onWordPressed?.call(word));
          }).toList(),
          style: textStyle),
    );
  }
}
