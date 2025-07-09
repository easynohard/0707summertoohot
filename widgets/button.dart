import 'package:flutter/material.dart';

class Button extends StatelessWidget {
  /*버튼이 어떤 property속성을 가지는지! */
  final String text;
  final Color bgColor;
  final Color textColor;

  const Button({
    super.key,
    required this.text,
    required this.bgColor,
    required this.textColor,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: bgColor,
        borderRadius: BorderRadius.circular(45),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 35),
        child: Text(text, style: TextStyle(color: textColor, fontSize: 22)),
      ),
    );
  }
}
