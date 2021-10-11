import 'dart:ui';
import 'package:flutter/material.dart';

class Txt extends StatelessWidget {
  final String text;
  final Color color;
  final FontWeight weight;
  final double size;
  final TextAlign textAlign;
  const Txt(this.text,
      {this.color = Colors.black,
      this.weight = FontWeight.normal,
      this.size = 16,
      this.textAlign = TextAlign.center});
  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      overflow: TextOverflow.visible,
      softWrap: true,
      textAlign: textAlign,
      style: TextStyle(
        color: color,
        fontWeight: weight,
        fontSize: size,
      ),
    );
  }
}
