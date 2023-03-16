import 'package:flutter/material.dart';
import 'package:house_rental_app/Constants.dart';

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
          gradient: primaryGradient,
          borderRadius: BorderRadius.circular(50),
          boxShadow: [
            BoxShadow(
                color: color.withOpacity(0.5),
                offset: const Offset(0, 5),
                blurRadius: 25)
          ]),
      child: Text(
        text,
        style: TextStyle(
            color: textColor, fontSize: font_m, fontWeight: FontWeight.w600),
      ),
    );
  }
}
