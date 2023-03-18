import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:house_rental_app/Constants.dart';
import 'package:house_rental_app/Explore-Service/Views/shared/Search.dart';

class FilterScreen extends StatelessWidget {
  const FilterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        title: Row(
          children: [
            Search(),
            InkWell(
              onTap: () => Get.to(FilterScreen()),
              child: Container(
                margin:
                    EdgeInsets.only(top: 10, bottom: 10, left: 20, right: 10),
                padding: EdgeInsets.all(15),
                decoration: BoxDecoration(
                  gradient: primaryGradient,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: SvgPicture.asset(
                  "assets/icons/Fliter.svg",
                  color: Colors.white,
                ),
              ),
            )
          ],
        ),
        leading: IconButton(
          onPressed: () => Get.back(),
          icon: const Icon(
            Icons.arrow_back_ios_new,
            color: Colors.black,
          ),
        ),
      ),
      body: Center(child: Text("Filter")),
    );
  }
}
