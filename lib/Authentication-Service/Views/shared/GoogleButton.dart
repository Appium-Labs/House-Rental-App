import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:house_rental_app/Constants.dart';

class GoogleButton extends StatelessWidget {
  const GoogleButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
        padding: const EdgeInsets.all(18),
        decoration: BoxDecoration(
            border: Border.all(width: 0.1),
            borderRadius: BorderRadius.circular(30)),
        child: IntrinsicHeight(
          child: Stack(
            children: [
              const Align(
                  child: Text(
                'Sign-In with Google',
                style: TextStyle(fontSize: font_m, fontWeight: FontWeight.w500),
              )),
              Align(
                  alignment: Alignment.centerLeft,
                  child: SvgPicture.asset(
                    "assets/icons/Google.svg",
                  )),
            ],
          ),
        ));
  }
}
