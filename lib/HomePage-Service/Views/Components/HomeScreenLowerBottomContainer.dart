import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter/material.dart';
import 'package:house_rental_app/Constants.dart';

import '../../../Components/PropertyCard.dart';

class HomeScreenLowerBottomContainer extends StatelessWidget {
  const HomeScreenLowerBottomContainer({super.key});

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
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Top rated in Surabaya",
                    style: TextStyle(
                      color: foundation_dark,
                      fontWeight: FontWeight.w600,
                      fontFamily: 'SF Pro Display',
                      fontStyle: FontStyle.normal,
                      fontSize: font_xm,
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
    ;
  }
}
