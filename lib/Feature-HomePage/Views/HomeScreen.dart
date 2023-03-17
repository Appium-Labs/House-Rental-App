import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:house_rental_app/Constants.dart';
import 'package:house_rental_app/Feature-HomePage/Views/Components/HomeScreenLowerContainer.dart';
import 'package:house_rental_app/Feature-HomePage/Views/Components/HomeScreenMiddleContainer.dart';

import 'Components/HomeScreenLowerBottomContainer.dart';
import 'Components/HomeScreenUpperContainer.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      child: Column(
        // mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
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

class Request extends StatelessWidget {
  const Request({super.key});

  @override
  Widget build(BuildContext context) {
    return const Text("Profile");
  }
}

class Explore extends StatelessWidget {
  const Explore({super.key});

  @override
  Widget build(BuildContext context) {
    return const Text("Explore");
  }
}

class Saved extends StatelessWidget {
  const Saved({super.key});

  @override
  Widget build(BuildContext context) {
    return const Text("Saved");
  }
}
