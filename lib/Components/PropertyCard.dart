import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../Constants.dart';

class PropertyCard extends StatelessWidget {
  const PropertyCard({super.key});

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 10),
      height: screenHeight / 4,
      width: screenWidth / 1.2,
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: <BoxShadow>[
          BoxShadow(
            color: Color(0xff43434326),
            offset: Offset(0.0, 10),
            blurRadius: 50.0,
          ),
        ],
        borderRadius: BorderRadius.circular(10),
      ),
      child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
        ClipRRect(
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(10), bottomLeft: Radius.circular(10)),
          child: Container(
            width: screenWidth / 3,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: NetworkImage(
                    "https://cdn.wallpapersafari.com/26/41/LxkWAM.jpg"),
                fit: BoxFit.cover,
              ),
            ),
          ),
        ),
        Container(
          padding: EdgeInsets.all(padding_m),
          width: screenWidth / 2,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(children: [
                SvgPicture.asset(
                  "assets/Icons/star.svg",
                  height: 20,
                ),
                SizedBox(
                  width: 6,
                ),
                Text(
                  "4.8",
                  style: TextStyle(
                    color: foundation_dark,
                    fontWeight: FontWeight.w400,
                    fontFamily: 'SF Pro Display',
                    fontStyle: FontStyle.normal,
                    fontSize: font_xs,
                  ),
                ),
                Text(
                  "(73)",
                  style: TextStyle(
                    color: grey_text_color,
                    fontWeight: FontWeight.w400,
                    fontFamily: 'SF Pro Display',
                    fontStyle: FontStyle.normal,
                    fontSize: font_xs,
                  ),
                )
              ]),
              Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Flexible(
                    child: Text(
                      "Entire Bromo dfdfdfdfkjsbdfisdbf dfdfdfdfkjsbdfisdbf dfdfdfdfkjsbdfisdbf ",
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      softWrap: true,
                      style: TextStyle(
                        color: foundation_dark,
                        fontWeight: FontWeight.w400,
                        fontFamily: 'SF Pro Display',
                        fontStyle: FontStyle.normal,
                        fontSize: font_m,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 4,
                  ),
                  Text(
                    "Malang, Probolinggo ",
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    softWrap: false,
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
                  SvgPicture.asset("assets/Icons/home-hashtag.svg"),
                  SizedBox(
                    width: 6,
                  ),
                  Text(
                    "2 room",
                    style: TextStyle(
                      color: grey_text_color,
                      fontWeight: FontWeight.w400,
                      fontFamily: 'SF Pro Display',
                      fontStyle: FontStyle.normal,
                      fontSize: font_s,
                    ),
                  ),
                  SizedBox(
                    width: 12,
                  ),
                  SvgPicture.asset("assets/Icons/home-hashtag.svg"),
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
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  RichText(
                    text: TextSpan(
                        text: "Rs. 526",
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
                                fontWeight: FontWeight.w400,
                                fontFamily: 'SF Pro Display',
                                fontStyle: FontStyle.normal,
                                fontSize: font_m,
                              ))
                        ]),
                  ),
                  SvgPicture.asset("assets/Icons/heart.svg"),
                ],
              ),
            ],
          ),
        ),
      ]),
    );
  }
}
