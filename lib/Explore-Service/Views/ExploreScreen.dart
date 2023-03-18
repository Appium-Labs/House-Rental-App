import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:house_rental_app/Components/PropertyCard.dart';
import 'package:house_rental_app/Constants.dart';
import 'package:house_rental_app/Explore-Service/Views/FilterScreen.dart';
import 'package:house_rental_app/Explore-Service/Views/shared/Search.dart';

class ExploreScreen extends StatelessWidget {
  const ExploreScreen({super.key});

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
                margin: EdgeInsets.symmetric(vertical: 10, horizontal: 4),
                padding: EdgeInsets.all(15),
                decoration: BoxDecoration(
                  color: Colors.grey[200],
                  borderRadius: BorderRadius.circular(20),
                ),
                child: SvgPicture.asset("assets/icons/Fliter.svg"),
              ),
            )
          ],
        ),
      ),
      body: Column(
        mainAxisSize: MainAxisSize.max,
        // mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            padding: EdgeInsets.all(20),
            child: Row(children: const [
              Text(
                "Showing 72 results",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
              ),
              Spacer(),
              Icon(Icons.sort),
              SizedBox(
                width: 10,
              ),
              Text("Sort")
            ]),
          ),
          Expanded(
            child: ListView.builder(
                itemCount: 5 + 1,
                itemBuilder: (context, index) {
                  return index == 5
                      ? Container(
                          margin: const EdgeInsets.all(20),
                          alignment: Alignment.center,
                          padding: const EdgeInsets.symmetric(
                              horizontal: 20, vertical: 18),
                          decoration: BoxDecoration(
                              border: Border.all(width: 1, color: primaryBlue),
                              borderRadius: BorderRadius.circular(30),
                              color: secondaryblue.withOpacity(0.2)),
                          child: const Text(
                            "Show more results",
                            style: TextStyle(fontSize: 17, color: primaryBlue),
                          ),
                        )
                      : Container(
                          height: 190,
                          margin: const EdgeInsets.symmetric(
                              vertical: 16, horizontal: 10),
                          child: PropertyCard());
                }),
          ),
        ],
      ),
    );
  }
}
