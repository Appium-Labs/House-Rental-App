import 'package:flutter/material.dart';
import 'package:house_rental_app/Components/PropertyCard.dart';
import 'package:house_rental_app/Saved-Service/VIews/Search.dart';

class SavedScreen extends StatelessWidget {
  const SavedScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          "Saved",
          style: TextStyle(color: Colors.black),
        ),
        elevation: 0,
        backgroundColor: Colors.transparent,
      ),
      body: Column(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const SizedBox(
            height: 10,
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
                                top: 30, left: 10, bottom: 10, right: 10),
                            child: Container()
                            //todo Container to propertyCard
                            ));
                  }))
        ],
      ),
    );
  }
}
