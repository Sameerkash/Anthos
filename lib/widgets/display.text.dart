import 'package:flutter/material.dart';

class DisplayText extends StatelessWidget {
  final String text;
  final double? fontSize;
  final Color? color;
  final Color? backgroundColor;
  final FontWeight? fontWeight;
  final TextAlign? textAlign;
  final TextOverflow? textOverflow;

  const DisplayText({
    Key? key,
    required this.text,
    this.fontSize,
    this.color,
    this.backgroundColor,
    this.fontWeight,
    this.textAlign,
    this.textOverflow,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        fontSize: fontSize,
        color: color,
        fontWeight: fontWeight,
        backgroundColor: backgroundColor,
      ),
      textAlign: textAlign,
    );
  }
}
