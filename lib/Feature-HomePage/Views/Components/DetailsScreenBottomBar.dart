import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

import '../../../Constants.dart';

class DetailsScreenBottomBar extends StatelessWidget {
  const DetailsScreenBottomBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            RichText(
                text: TextSpan(
                    text: "Rs. 2,700 ",
                    style: TextStyle(
                      color: foundation_dark,
                      fontWeight: FontWeight.w600,
                      fontFamily: 'SF Pro Display',
                      fontStyle: FontStyle.normal,
                      fontSize: font_xm,
                    ),
                    children: [
                  TextSpan(
                      text: "/month",
                      style: TextStyle(
                        color: grey_text_color,
                        fontWeight: FontWeight.w600,
                        fontFamily: 'SF Pro Display',
                        fontStyle: FontStyle.normal,
                        fontSize: font_xm,
                      ))
                ])),
            SizedBox(
              height: 8,
            ),
            Text(
              "Payment estimation",
              style: TextStyle(
                decoration: TextDecoration.underline,
                color: foundation_dark,
                fontWeight: FontWeight.w400,
                fontFamily: 'SF Pro Display',
                fontStyle: FontStyle.normal,
                fontSize: font_s,
              ),
            )
          ],
        ),
        Container(
          alignment: Alignment.center,
          height: 50,
          width: MediaQuery.of(context).size.width / 3,
          decoration: BoxDecoration(
              gradient: buttonLinearGradient,
              borderRadius: BorderRadius.circular(72)),
          child: Text(
            "Rent",
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.w500,
              fontFamily: 'SF Pro Display',
              fontStyle: FontStyle.normal,
              fontSize: font_m,
            ),
          ),
        ),
      ],
    );
  }
}
