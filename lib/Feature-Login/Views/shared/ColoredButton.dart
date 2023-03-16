import 'package:flutter/material.dart';

class ColoredButton extends StatelessWidget {
  final String text;
  final Color color;
  final Color textColor;
  const ColoredButton(
      {super.key,
      required this.text,
      required this.color,
      required this.textColor});

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
      height: 60,
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
          color: color,
          gradient: const LinearGradient(
              colors: [Color(0xff937CFF), Color(0xff6246EA)]),
          borderRadius: BorderRadius.circular(50),
          boxShadow: [
            BoxShadow(color: color, offset: const Offset(0, 2), blurRadius: 10)
          ]),
      child: Text(
        text,
        style: TextStyle(
            color: textColor, fontSize: 16, fontWeight: FontWeight.w600),
      ),
    );
  }
}
