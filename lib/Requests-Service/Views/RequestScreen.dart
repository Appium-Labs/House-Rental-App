import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:house_rental_app/Requests-Service/Views/RequestDetailScreen.dart';
import 'package:house_rental_app/Requests-Service/Views/shared/RequestTiles.dart';
import 'package:house_rental_app/Requests-Service/Views/shared/Search.dart';

class RequestScreen extends StatelessWidget {
  const RequestScreen({super.key});

  @override
  Widget build(BuildContext context) {
    List<String> names = [
      "John wick",
      "Maria Watson",
      "Peter Griffin",
      "Cleveland black",
      "Alex Dumphy"
    ];
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        elevation: 0,
        backgroundColor: Colors.transparent,
        title: const Text(
          "Requests",
          style: TextStyle(color: Colors.black),
        ),
      ),
      body: Column(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // const SizedBox(
            //   height: 70,
            // ),
            Container(
                margin: const EdgeInsets.symmetric(horizontal: 18),
                child: Search()),
            SizedBox(
              height: 30,
            ),
            Expanded(
                child: ListView.builder(
                    itemCount: names.length,
                    itemBuilder: (context, index) {
                      return InkWell(
                          onTap: () => Get.to(RequestDetailScreen()),
                          child: RequestTile(name: names[index]));
                    }))
          ]),
    );
  }
}
