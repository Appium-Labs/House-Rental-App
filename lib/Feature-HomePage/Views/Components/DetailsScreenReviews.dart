import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:house_rental_app/Constants.dart';

class DetailsScreenReviews extends StatelessWidget {
  const DetailsScreenReviews({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: padding_m, vertical: padding_s),
      child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        Text(
          "Testimonials",
          style: TextStyle(
            color: foundation_dark,
            fontWeight: FontWeight.w600,
            fontFamily: 'SF Pro Display',
            fontStyle: FontStyle.normal,
            fontSize: font_xm,
          ),
        ),
        SizedBox(
          height: 24,
        ),
        ListView.builder(
            padding: EdgeInsets.all(0),
            itemCount: 5,
            shrinkWrap: true,
            physics: NeverScrollableScrollPhysics(),
            itemBuilder: (ctx, idx) {
              return ReviewCard();
            })
      ]),
    );
  }
}

class ReviewCard extends StatelessWidget {
  const ReviewCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
        elevation: 0.1,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              ListTile(
                contentPadding: EdgeInsets.all(0),
                leading: SvgPicture.asset("assets/icons/profile-temp.svg"),
                title: Text(
                  'Sans Jose',
                  style: TextStyle(
                    color: foundation_dark,
                    fontWeight: FontWeight.w400,
                    fontFamily: 'SF Pro Display',
                    fontStyle: FontStyle.normal,
                    fontSize: font_m,
                  ),
                ),
                subtitle: Container(
                    alignment: Alignment.centerLeft,
                    child: SvgPicture.asset("assets/icons/stars.svg")),
              ),
              Text(
                "My wife and I had a dream of downsizing from our house in Cape Elizabeth into a small condo closer to where we work and play in Portland. David and his skilled team helped make that dream a reality. The sale went smoothly, and we just closed on an ideal new place we're excited to call home.",
                style: TextStyle(
                  color: grey_text_color,
                  fontWeight: FontWeight.w400,
                  fontFamily: 'SF Pro Display',
                  fontStyle: FontStyle.normal,
                  fontSize: font_s,
                ),
              )
            ],
          ),
        ));
  }
}
