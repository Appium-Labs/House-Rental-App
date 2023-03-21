import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:get/get.dart';
import 'package:house_rental_app/Constants.dart';
import 'package:house_rental_app/Explore-Service/Controllers/ExploreServiceController.dart';

class BuyRentTab extends StatelessWidget {
  ExploreServiceController exploreServiceController =
      Get.put(ExploreServiceController());
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 30, vertical: 8),
      child: Obx(
        () => Container(
          padding: EdgeInsets.symmetric(
              vertical: padding_xxs, horizontal: padding_xxs),
          decoration: BoxDecoration(
              color: grey_bg_color,
              borderRadius: BorderRadius.circular(75),
              border: Border.all(color: grey_border_color, width: 0.8)),
          child: Row(
            // mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              InkWell(
                onTap: () {
                  if (exploreServiceController.filterScreenState.value !=
                      "RENT") exploreServiceController.toggleState();
                },
                child: Container(
                    alignment: Alignment.center,
                    width: MediaQuery.of(context).size.width * 0.4,
                    decoration: BoxDecoration(
                        gradient:
                            exploreServiceController.filterScreenState.value ==
                                    "RENT"
                                ? buttonLinearGradient
                                : const LinearGradient(colors: [
                                    Colors.transparent,
                                    Colors.transparent
                                  ]),
                        borderRadius: BorderRadius.circular(75)),
                    padding: EdgeInsets.symmetric(vertical: padding_xs),
                    child: Text(
                      "I need to rent",
                      style: TextStyle(
                          fontFamily: 'SF Pro Display',
                          fontStyle: FontStyle.normal,
                          color: exploreServiceController
                                      .filterScreenState.value ==
                                  "RENT"
                              ? foundation_white
                              : grey_text_color,
                          fontSize: font_m,
                          fontWeight: FontWeight.w500),
                    )),
              ),
              Spacer(),
              InkWell(
                onTap: () {
                  if (exploreServiceController.filterScreenState.value != "BUY")
                    exploreServiceController.toggleState();
                },
                child: Container(
                    alignment: Alignment.center,
                    width: MediaQuery.of(context).size.width * 0.4,
                    decoration: BoxDecoration(
                        gradient:
                            exploreServiceController.filterScreenState.value ==
                                    "BUY"
                                ? buttonLinearGradient
                                : const LinearGradient(colors: [
                                    Colors.transparent,
                                    Colors.transparent
                                  ]),
                        borderRadius: BorderRadius.circular(75)),
                    padding: EdgeInsets.symmetric(vertical: padding_xs),
                    child: Text(
                      "I need to buy",
                      style: TextStyle(
                          fontFamily: 'SF Pro Display',
                          fontStyle: FontStyle.normal,
                          color: exploreServiceController
                                      .filterScreenState.value ==
                                  "BUY"
                              ? foundation_white
                              : grey_text_color,
                          fontSize: font_m,
                          fontWeight: FontWeight.w500),
                    )),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
