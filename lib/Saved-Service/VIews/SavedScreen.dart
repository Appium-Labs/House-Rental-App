import 'package:flutter/material.dart';
import 'package:house_rental_app/Components/PropertyCard.dart';
import 'package:house_rental_app/Saved-Service/VIews/Search.dart';

class SavedScreen extends StatelessWidget {
  const SavedScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const SizedBox(
            height: 70,
          ),
          Container(
              margin: const EdgeInsets.symmetric(horizontal: 18),
              child: Search()),
          Expanded(
              child: ListView.builder(
                  itemCount: 5,
                  itemBuilder: (context, index) {
                    return InkWell(
                        onTap: () {},
                        child: Container(
                            height: 180,
                            margin: EdgeInsets.only(
                                left: 10, bottom: 30, right: 10),
                            child: PropertyCard()));
                  }))
        ],
      ),
    );
  }
}
