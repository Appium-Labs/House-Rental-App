import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:house_rental_app/Constants.dart';
import 'package:house_rental_app/Feature-HomePage/Views/Components/HomeScreenLowerContainer.dart';
import 'package:house_rental_app/Feature-HomePage/Views/Components/HomeScreenMiddleContainer.dart';

import 'Components/HomeScreenUpperContainer.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          HomeScreenUpperContainer(),
          HomeScreenMiddleContainer(),
          HomeScreenLowerContainer(),
        ],
      ),
    ));
  }
}
