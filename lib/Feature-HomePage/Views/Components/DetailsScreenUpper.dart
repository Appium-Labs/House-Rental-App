import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:house_rental_app/Constants.dart';

class DetailScreenUpper extends StatelessWidget {
  const DetailScreenUpper({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:
          EdgeInsets.symmetric(horizontal: padding_m, vertical: padding_xxxs),
      child: Column(
        // mainAxisSize: MainAxisSize.min,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Flexible(
                  flex: 3,
                  child: Text(
                    "Entire Bromo mountain view Cabin in Surabaya",
                    maxLines: 2,
                    style: TextStyle(
                        color: foundation_dark,
                        fontSize: font_xm,
                        fontWeight: FontWeight.w600),
                  )),
              Flexible(
                  flex: 2,
                  child: SvgPicture.asset(
                    "assets/icons/heart.svg",
                    colorFilter:
                        ColorFilter.mode(foundation_dark, BlendMode.srcIn),
                    alignment: Alignment.centerRight,
                  )),
            ],
          ),
          SizedBox(
            height: 16,
          ),
          Container(
            // color: Colors.red,
            height: 75,
            child: GridView.count(
              clipBehavior: Clip.none,
              // primary: false,
              physics: NeverScrollableScrollPhysics(),
              padding: const EdgeInsets.all(0),
              mainAxisSpacing: 1,
              crossAxisSpacing: 1,
              childAspectRatio: 5,
              // mainAxisSpacing: 10,
              crossAxisCount: 2,
              children: [
                Row(
                  children: [
                    SvgPicture.asset("assets/icons/star.svg"),
                    RichText(
                      text: TextSpan(
                          text: "4.3",
                          style: TextStyle(
                              fontFamily: "SF Pro Display",
                              fontStyle: FontStyle.normal,
                              color: foundation_dark,
                              fontSize: font_m,
                              fontWeight: FontWeight.w400),
                          children: [
                            TextSpan(
                              text: "(73)",
                              style: TextStyle(
                                  fontFamily: "SF Pro Display",
                                  fontStyle: FontStyle.normal,
                                  color: grey_text_color,
                                  fontSize: font_m,
                                  fontWeight: FontWeight.w400),
                            ),
                          ]),
                    ),
                  ],
                ),
                Row(
                  children: [
                    SvgPicture.asset("assets/icons/star.svg"),
                    SizedBox(
                      width: 6,
                    ),
                    Text(
                      "2 rooms",
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
                Row(
                  children: [
                    SvgPicture.asset("assets/icons/locationGrey.svg"),
                    SizedBox(
                      width: 6,
                    ),
                    Text(
                      "Malang, Probolinggo",
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
                Row(
                  children: [
                    SvgPicture.asset("assets/icons/home-hashtag.svg"),
                    SizedBox(
                      width: 6,
                    ),
                    Text(
                      "673 m2",
                      style: TextStyle(
                        color: grey_text_color,
                        fontWeight: FontWeight.w400,
                        fontFamily: 'SF Pro Display',
                        fontStyle: FontStyle.normal,
                        fontSize: font_s,
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
