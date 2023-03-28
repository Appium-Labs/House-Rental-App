import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:house_rental_app/Constants.dart';
import 'package:house_rental_app/HomePage-Service/Controllers/PropertyController.dart';
import 'package:house_rental_app/HomePage-Service/Models/Properties.dart';
import 'package:house_rental_app/HomePage-Service/Views/Components/DetailsScreenOwnerDetails.dart';
import 'package:house_rental_app/HomePage-Service/Views/Components/DetailsScreenReviews.dart';
import 'package:house_rental_app/HomePage-Service/Views/Components/DetailsScreenUpper.dart';

import 'Components/DetailsScreenAboutProperty.dart';
import 'Components/DetailsScreenBottomBar.dart';

class DetailsScreen extends StatelessWidget {
  Properties property;
  DetailsScreen({required this.property});

  @override
  Widget build(BuildContext context) {
    print(property.toJson());
    PropertyController propertyController = Get.put(PropertyController());
    propertyController.property.value = property;
    propertyController.getPropertyOwner();
    return Scaffold(
      body: SingleChildScrollView(
        physics: ScrollPhysics(),
        child: Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          child: Stack(
            children: [
              Positioned(
                top: 0,
                left: 0,
                child: Container(
                  height: MediaQuery.of(context).size.height,
                  width: MediaQuery.of(context).size.width,
                  child: SingleChildScrollView(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Stack(
                          alignment: Alignment.bottomRight,
                          children: [
                            CarouselSlider(
                              // carouselController: cc,
                              options: CarouselOptions(
                                enlargeCenterPage: true,
                                height: MediaQuery.of(context).size.height / 3,
                                viewportFraction: 1,
                              ),
                              items: propertyController.property.value.photos
                                  ?.map((e) {
                                return Builder(
                                  builder: (BuildContext context) {
                                    return Container(
                                      child: Image.network(
                                        e.url.toString(),
                                        fit: BoxFit.contain,
                                        // width:
                                        //     MediaQuery.of(context).size.width / 2,
                                      ),
                                    );
                                  },
                                );
                              }).toList(),
                            ),
                            Positioned(
                              right: 20,
                              bottom: 20,
                              child: Container(
                                  padding: EdgeInsets.symmetric(
                                      horizontal: 10, vertical: 5),
                                  decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.circular(50),
                                      boxShadow: [
                                        BoxShadow(
                                            offset: Offset(0, 0),
                                            color: Colors.grey.withOpacity(0.3),
                                            spreadRadius: 2,
                                            blurRadius: 20)
                                      ]),
                                  child: Text(
                                    "1/11",
                                  )),
                            )
                          ],
                        ),
                        DetailScreenUpper(),
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: padding_m),
                          child: Divider(
                            // height: 0.8,
                            thickness: 0.8,
                          ),
                        ),
                        DetailsScreenOwnerDetails(),
                        DetailsScreenAboutProperty(),
                        DetailsScreenReviews(),
                        DetailsScreenBottomBar(),
                        SizedBox(
                          height: 50,
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Positioned(
                  top: 0,
                  left: 0,
                  child: Container(
                    margin: EdgeInsets.only(top: 50, left: 15),
                    height: 50,
                    width: 50,
                    padding: EdgeInsets.only(left: 10),
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(100),
                        boxShadow: [
                          BoxShadow(
                              offset: Offset(0, 0),
                              color: Colors.grey.withOpacity(0.3),
                              spreadRadius: 2,
                              blurRadius: 20)
                        ]),
                    child: IconButton(
                      onPressed: () {
                        Get.back();
                      },
                      icon: const Icon(Icons.arrow_back_ios),
                    ),
                  )),
            ],
          ),
        ),
      ),

      //////////////////////
    );
  }
}
