import 'package:flutter/material.dart';
import 'package:house_rental_app/Constants.dart';

class Header extends StatelessWidget {
  final String title;
  final String subTitle;
  const Header({super.key, required this.title, required this.subTitle});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 18, bottom: 10),
      child: Column(children: [
        Container(
          margin: const EdgeInsets.symmetric(horizontal: 22),
          alignment: Alignment.centerLeft,
          child: Text(
            title,
            style:
                const TextStyle(fontSize: font_xl, fontWeight: FontWeight.w700),
          ),
        ),
        Container(
          margin: const EdgeInsets.symmetric(vertical: 10, horizontal: 22),
          alignment: Alignment.centerLeft,
          child: Text(
            subTitle,
            overflow: TextOverflow.clip,
            maxLines: 2,
            textAlign: TextAlign.start,
            style: const TextStyle(color: Color(0xff7D7F88)),
          ),
        ),
      ]),
    );
  }
}
