import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:house_rental_app/HomePage-Service/Models/Properties.dart';
import 'package:house_rental_app/HomePage-Service/Views/DetailsScreen.dart';

import '../Constants.dart';

class PropertyCard extends StatelessWidget {
  Properties property;
  PropertyCard({required this.property});
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    return InkWell(
      onTap: () {
        Get.to(DetailsScreen(property: property));
      },
      child: Container(
        margin: EdgeInsets.symmetric(horizontal: 10),
        width: screenWidth / 1.2,
        decoration: BoxDecoration(
          color: Colors.white,
          boxShadow: <BoxShadow>[
            BoxShadow(
                color: Color(0xff43434326).withOpacity(0.17),
                offset: Offset(2, 5),
                blurRadius: 30.0,
                spreadRadius: 1),
          ],
          borderRadius: BorderRadius.circular(10),
        ),
        child:
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
          ClipRRect(
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(10), bottomLeft: Radius.circular(10)),
            child: Container(
              width: screenWidth / 3,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: NetworkImage(property.photos![0].url!),
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
          Expanded(
            child: Container(
              padding: EdgeInsets.all(padding_m),
              width: screenWidth / 2,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(children: [
                    SvgPicture.asset(
                      "assets/icons/star.svg",
                      height: 20,
                    ),
                    SizedBox(
                      width: 6,
                    ),
                    Text(
                      property.rating!.toString(),
                      style: TextStyle(
                        color: foundation_dark,
                        fontWeight: FontWeight.w400,
                        fontFamily: 'SF Pro Display',
                        fontStyle: FontStyle.normal,
                        fontSize: font_xs,
                      ),
                    ),
                    Text(
                      "(${property.reviews!.length})",
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
                          property.title!,
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                          softWrap: true,
                          style: TextStyle(
                            color: foundation_dark,
                            fontWeight: FontWeight.w500,
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
                        "${property.city}, ${property.country} ",
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
                      SvgPicture.asset("assets/icons/home-hashtag.svg"),
                      SizedBox(
                        width: 6,
                      ),
                      Text(
                        "${property.bedrooms} room",
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
                      SvgPicture.asset("assets/icons/home-hashtag.svg"),
                      SizedBox(
                        width: 6,
                      ),
                      Text(
                        "${property.totalArea} m2",
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
                            text: "Rs. ${property.totalPrice}",
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
                      SvgPicture.asset("assets/icons/heart.svg"),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ]),
      ),
    );
  }
}
