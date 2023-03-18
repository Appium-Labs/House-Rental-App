import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:house_rental_app/Constants.dart';
import 'package:house_rental_app/HomePage-Service/Views/Components/DetailsScreenOwnerDetails.dart';
import 'package:house_rental_app/HomePage-Service/Views/Components/DetailsScreenReviews.dart';
import 'package:house_rental_app/HomePage-Service/Views/Components/DetailsScreenUpper.dart';

import 'Components/DetailsScreenAboutProperty.dart';
import 'Components/DetailsScreenBottomBar.dart';

class DetailsScreen extends StatelessWidget {
  const DetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
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
                                  height:
                                      MediaQuery.of(context).size.height / 3,
                                  viewportFraction: 1,
                                ),
                                items: [
                                  Image(
                                    image: NetworkImage(
                                        "https://wallpapercave.com/wp/wp7047989.jpg"),
                                  ),
                                  Image(
                                    image: NetworkImage(
                                        "https://wallpaperaccess.com/full/3060214.jpg"),
                                  ),
                                  Image(
                                    image: NetworkImage(
                                        "https://images.unsplash.com/photo-1600585154340-be6161a56a0c?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxleHBsb3JlLWZlZWR8N3x8fGVufDB8fHx8&w=1000&q=80"),
                                  ),
                                  Image(
                                    image: NetworkImage(
                                        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRNbLtrIsOrWfoJ6467FwAXrEywldNcUAY7kQ&usqp=CAU"),
                                  )
                                ]),
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
                      icon: Icon(Icons.arrow_back_ios),
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
