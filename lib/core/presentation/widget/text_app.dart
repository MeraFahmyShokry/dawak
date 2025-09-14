
import 'package:flutter/material.dart';

class TextApp extends StatelessWidget {
  const TextApp(
    this.text, {
    this.style,
    this.isLoading,
    this.maxLines,
    this.fontSize,
    this.fontFamily,
    this.color,
    this.fontWeight,
    this.softWrap,
    this.textOverflow,
    this.textAlign,
    this.underline, 
    super.key,
  });

  final String text;
  final String? fontFamily;
  final double? fontSize;
  final FontWeight? fontWeight;
  final Color? color;
  final TextStyle? style;
  final int? maxLines;
  final bool? softWrap;
  final bool? isLoading;
  final TextOverflow? textOverflow;
  final TextAlign? textAlign;
  final bool? underline;

  @override
  Widget build(BuildContext context) {
    return Text(
      isLoading == true ? '.......' : text,
      softWrap: softWrap,
      style: style ??
          TextStyle(
            fontWeight: fontWeight,
            fontSize: fontSize,
            color: color,
            fontFamily: fontFamily,
            decoration: underline == true
                ? TextDecoration.underline
                : TextDecoration.none, 
          ),
      overflow: textOverflow,
      textAlign: textAlign,
      maxLines: maxLines,
    );
  }
}
