import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:house_rental_app/Constants.dart';

class PlaceRequestScreenInput extends StatelessWidget {
  const PlaceRequestScreenInput({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 24),
      height: 180,
      // width: screenWidth / 1.2,
      // alignment: Alignment.center,
      width: MediaQuery.of(context).size.width / 1.2,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Colors.white,
        boxShadow: <BoxShadow>[
          BoxShadow(
              color: Color(0xff43434326).withOpacity(0.17),
              offset: Offset(2, 5),
              blurRadius: 30.0,
              spreadRadius: 1),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Your input details",
                style: TextStyle(
                  color: foundation_dark,
                  fontWeight: FontWeight.w600,
                  fontFamily: 'SF Pro Display',
                  fontStyle: FontStyle.normal,
                  fontSize: font_xxm,
                ),
              ),
              Text(
                "Edit",
                style: TextStyle(
                    fontWeight: FontWeight.w500,
                    fontFamily: 'SF Pro Display',
                    fontStyle: FontStyle.normal,
                    fontSize: font_s,
                    foreground: Paint()..shader = textLinearGradient),
              )
            ],
          ),
          Text(
            "Date",
            style: TextStyle(
              color: foundation_dark,
              fontWeight: FontWeight.w600,
              fontFamily: 'SF Pro Display',
              fontStyle: FontStyle.normal,
              fontSize: font_m,
            ),
          ),
          Text(
            "11 Nov - 5 Dec",
            style: TextStyle(
              color: grey_text_color,
              fontWeight: FontWeight.w400,
              fontFamily: 'SF Pro Display',
              fontStyle: FontStyle.normal,
              fontSize: font_s,
            ),
          ),
          SizedBox(height: 2),
          Text(
            "Guests count",
            style: TextStyle(
              color: foundation_dark,
              fontWeight: FontWeight.w600,
              fontFamily: 'SF Pro Display',
              fontStyle: FontStyle.normal,
              fontSize: font_m,
            ),
          ),
          Text(
            "3 guests",
            style: TextStyle(
              color: grey_text_color,
              fontWeight: FontWeight.w400,
              fontFamily: 'SF Pro Display',
              fontStyle: FontStyle.normal,
              fontSize: font_s,
            ),
          ),
        ],
      ),
    );
    ;
  }
}
