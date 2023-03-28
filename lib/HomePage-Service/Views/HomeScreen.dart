import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:house_rental_app/HomePage-Service/Controllers/HomePageController.dart';

import 'package:house_rental_app/HomePage-Service/Views/Components/HomeScreenLowerContainer.dart';
import 'package:house_rental_app/HomePage-Service/Views/Components/HomeScreenMiddleContainer.dart';

import 'Components/HomeScreenLowerBottomContainer.dart';
import 'Components/HomeScreenUpperContainer.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    HomePageController homePageController = Get.put(HomePageController());
    return Scaffold(
        body: SingleChildScrollView(
      child: Column(
        // mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(
            height: 50,
          ),
          HomeScreenUpperContainer(),
          HomeScreenMiddleContainer(),
          HomeScreenLowerContainer(),
          HomeScreenLowerBottomContainer(),
          SizedBox(
            height: 75,
          ),
        ],
      ),
    ));
  }
}

class Explore extends StatelessWidget {
  const Explore({super.key});

  @override
  Widget build(BuildContext context) {
    return const Text("Explore");
  }
}
