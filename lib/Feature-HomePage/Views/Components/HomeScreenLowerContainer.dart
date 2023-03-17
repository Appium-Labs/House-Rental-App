import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:house_rental_app/Components/PropertyCard.dart';
import 'package:house_rental_app/Constants.dart';

class HomeScreenLowerContainer extends StatelessWidget {
  const HomeScreenLowerContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: padding_xm),
      child: Container(
        child: Column(
          // mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.symmetric(
                horizontal: padding_m,
              ),
              child: Text(
                "Near your location",
                style: TextStyle(
                  color: foundation_dark,
                  fontWeight: FontWeight.w600,
                  fontFamily: 'SF Pro Display',
                  fontStyle: FontStyle.normal,
                  fontSize: font_xm,
                ),
              ),
            ),
            SizedBox(
              height: 4,
            ),
            Padding(
              padding: EdgeInsets.symmetric(
                horizontal: padding_m,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "243 properties in Surabaya",
                    style: TextStyle(
                      color: grey_text_color,
                      fontWeight: FontWeight.w400,
                      fontFamily: 'SF Pro Display',
                      fontStyle: FontStyle.normal,
                      fontSize: font_xs,
                    ),
                  ),
                  Text(
                    "See all",
                    style: TextStyle(
                      foreground: Paint()..shader = textLinearGradient,
                      // color: grey_text_color,
                      fontWeight: FontWeight.w500,
                      fontFamily: 'SF Pro Display',
                      fontStyle: FontStyle.normal,
                      fontSize: font_s,
                    ),
                  )
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              height: 200,
              child: ListView.builder(
                  clipBehavior: Clip.none,
                  shrinkWrap: true,
                  physics: const AlwaysScrollableScrollPhysics(),
                  scrollDirection: Axis.horizontal,
                  itemCount: 50,
                  itemBuilder: (ctx, idx) {
                    return PropertyCard();
                  }),
            ),
          ],
        ),
      ),
    );
  }
}
