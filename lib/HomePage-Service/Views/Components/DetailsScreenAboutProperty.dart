import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../Constants.dart';

class DetailsScreenAboutProperty extends StatelessWidget {
  const DetailsScreenAboutProperty({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: padding_m, vertical: padding_s),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        // mainAxisSize: MainAxisSize.max,
        children: [
          Text(
            "Home facilities",
            style: TextStyle(
              color: foundation_dark,
              fontWeight: FontWeight.w600,
              fontFamily: 'SF Pro Display',
              fontStyle: FontStyle.normal,
              fontSize: font_xm,
            ),
          ),
          ListView.builder(
              padding: EdgeInsets.symmetric(vertical: 20),
              itemCount: 5,
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              itemBuilder: (ctx, idx) {
                return Padding(
                  padding: EdgeInsets.symmetric(vertical: padding_xxs),
                  child: Row(
                    children: [
                      SvgPicture.asset("assets/icons/parking.svg"),
                      SizedBox(
                        width: 10,
                      ),
                      Text(
                        "Home facilities",
                        style: TextStyle(
                          color: foundation_dark,
                          fontWeight: FontWeight.w400,
                          fontFamily: 'SF Pro Display',
                          fontStyle: FontStyle.normal,
                          fontSize: font_m,
                        ),
                      ),
                    ],
                  ),
                );
              }),
          Text(
            "About location’s neighborhood",
            style: TextStyle(
              color: foundation_dark,
              fontWeight: FontWeight.w600,
              fontFamily: 'SF Pro Display',
              fontStyle: FontStyle.normal,
              fontSize: font_xm,
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Text(
            "This cabin comes with Smart Home System and beautiful viking style. You can see sunrise in the morning with City View from full Glass Window.This unit is surrounded by business district of West Surabaya that offers you the city life as well as wide range of culinary.This apartment equipped with Washing Machine, Electric Stove, Microwave, Refrigerator, Cutlery.",
            style: TextStyle(
              color: grey_text_color,
              fontWeight: FontWeight.w400,
              fontFamily: 'SF Pro Display',
              fontStyle: FontStyle.normal,
              fontSize: font_m,
            ),
          ),
          SizedBox(
            height: 32,
          ),
          Container(
            padding: EdgeInsets.all(padding_m),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(90),
                border: Border.all(width: 0.6, color: grey_text_color)),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Text(
                  "Average living cost",
                  style: TextStyle(
                    color: grey_text_color,
                    fontWeight: FontWeight.w400,
                    fontFamily: 'SF Pro Display',
                    fontStyle: FontStyle.normal,
                    fontSize: font_m,
                  ),
                ),
                Text(
                  "500 Rs./month",
                  style: TextStyle(
                    color: foundation_dark,
                    fontWeight: FontWeight.w600,
                    fontFamily: 'SF Pro Display',
                    fontStyle: FontStyle.normal,
                    fontSize: font_m,
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
