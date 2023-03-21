import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:house_rental_app/Constants.dart';
import 'package:house_rental_app/Explore-Service/Views/shared/AddRemoveButton.dart';
import 'package:house_rental_app/Explore-Service/Views/shared/BuyRentTab.dart';
import 'package:house_rental_app/Explore-Service/Views/shared/FilterButton.dart';
import 'package:house_rental_app/Explore-Service/Views/shared/FilterHeading.dart';
import 'package:house_rental_app/Explore-Service/Views/shared/Search.dart';

class FilterScreen extends StatelessWidget {
  const FilterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    List<String> list = ["Any", "Flat", "House", "Cabin"];
    List<String> priceRange = ["Any", "Monthly", "Anually", "Daily"];
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        title: Row(
          children: [
            Search(),
            InkWell(
              onTap: () => Get.back(),
              child: Hero(
                tag: "filter-button",
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
      body: SingleChildScrollView(
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          BuyRentTab(),
          FilterHeading(text: "How long do you want to stay?"),
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 8),
            padding: const EdgeInsets.all(15),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30),
                color: Colors.grey[200]),
            child: Row(children: const [
              Icon(Icons.calendar_month),
              SizedBox(
                width: 10,
              ),
              Text(
                "11 Nov - 5 Dec",
                style: TextStyle(fontWeight: FontWeight.bold),
              )
            ]),
          ),
          FilterHeading(text: "Property type"),
          Container(
            height: 60,
            width: MediaQuery.of(context).size.width,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: list.length,
              itemBuilder: (context, index) {
                return FilterButton(
                  width: 100,
                  text: list[index],
                  pressed: index == 1 ? true : false,
                );
              },
            ),
          ),
          FilterHeading(text: "Price Range"),
          RangeSlider(
            values: RangeValues(10, 70),
            max: 100,
            divisions: 5,
            activeColor: primaryBlue,
            inactiveColor: secondaryblue.withOpacity(0.5),
            // thumbColor: Colors.white,
            // label: _currentSliderValue.round().toString(),
            onChanged: (value) {},
          ),
          Container(
            height: 60,
            width: MediaQuery.of(context).size.width,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: priceRange.length,
              itemBuilder: (context, index) {
                return FilterButton(
                  text: priceRange[index],
                  pressed: index == 0 ? true : false,
                  width: 100,
                );
              },
            ),
          ),
          FilterHeading(text: "Rooms and beds"),
          AddRemoveButton(title: "Bedrooms", number: 1),
          AddRemoveButton(title: "Bathrooms", number: 1),
          AddRemoveButton(title: "Beds", number: 2),
          SizedBox(
            height: 20,
          ),
          FilterHeading(text: "How many guests coming?"),
          AddRemoveButton(title: "Adults", number: 1),
          AddRemoveButton(title: "Children", number: 1),
          AddRemoveButton(title: "Senior Citizens", number: 2),
          SizedBox(
            height: 20,
          ),
          FilterHeading(text: "Property Facilities"),
          Container(
            height: 65,
            width: MediaQuery.of(context).size.width,
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  FilterButton(
                    text: "Any",
                    pressed: false,
                    width: 100,
                  ),
                  FilterButton(
                    text: "Wifi",
                    pressed: true,
                    width: 100,
                  ),
                  FilterButton(
                    text: "Self check-in",
                    pressed: false,
                    width: 150,
                  )
                ],
              ),
            ),
          ),
          Container(
            height: 65,
            width: MediaQuery.of(context).size.width,
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  FilterButton(
                    text: "Kitchen",
                    pressed: false,
                    width: 100,
                  ),
                  FilterButton(
                    text: "Free Parking",
                    pressed: false,
                    width: 150,
                  ),
                ],
              ),
            ),
          ),
          Container(
            height: 65,
            width: MediaQuery.of(context).size.width,
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  FilterButton(
                    text: "Air Conditioner",
                    pressed: true,
                    width: 160,
                  ),
                  FilterButton(
                    text: "Security",
                    pressed: false,
                    width: 100,
                  ),
                ],
              ),
            ),
          ),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 25, vertical: 30),
            child: Row(
              children: [
                Icon(
                  Icons.refresh,
                  color: primaryBlue,
                ),
                SizedBox(
                  width: 5,
                ),
                Text(
                  "Reset All",
                  style: TextStyle(color: Colors.grey[850], fontSize: 17),
                ),
                Spacer(),
                Container(
                  padding: EdgeInsets.all(20),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      color: Colors.grey[850]),
                  child: Text(
                    "Show Results",
                    style: TextStyle(color: Colors.white, fontSize: 17),
                  ),
                )
              ],
            ),
          ),
          SizedBox(
            height: 20,
          )
        ]),
      ),
    );
  }
}
