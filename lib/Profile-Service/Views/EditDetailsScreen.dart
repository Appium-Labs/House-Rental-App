import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_connect/http/src/utils/utils.dart';
import 'package:house_rental_app/Authentication-Service/Views/shared/TextFeildContainer.dart';
import 'package:house_rental_app/Constants.dart';

class EditDetailsScreen extends StatelessWidget {
  const EditDetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController phoneController = TextEditingController();
    TextEditingController ageController = TextEditingController();
    TextEditingController genderController = TextEditingController();
    TextEditingController marriedController = TextEditingController();

    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          "Edit Details",
          style: TextStyle(color: Colors.black),
        ),
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: IconButton(
          onPressed: () => Get.back(),
          icon: const Icon(
            Icons.arrow_back_ios_new,
            color: Colors.black,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(crossAxisAlignment: CrossAxisAlignment.center, children: [
          Container(
            margin: const EdgeInsets.all(15),
            alignment: Alignment.center,
            child: Column(children: [
              CircleAvatar(
                radius: 50,
                foregroundImage: AssetImage("assets/images/DefaultProfile.png"),
              ),
              const SizedBox(
                height: 15,
              ),
              const Text("Add Profile Image")
            ]),
          ),
          TextFeildContainer(
              obscureText: false,
              controller: phoneController,
              text: "Phone",
              icon: const Icon(Icons.add_circle_outlined)),
          TextFeildContainer(
              obscureText: false,
              controller: ageController,
              text: "Age",
              icon: const Icon(Icons.add_circle_outlined)),
          TextFeildContainer(
              obscureText: false,
              controller: genderController,
              text: "Gender",
              icon: const Icon(
                Icons.add_circle_outlined,
              )),
          TextFeildContainer(
              obscureText: false,
              controller: marriedController,
              text: "Marital status",
              icon: const Icon(Icons.add_circle_outlined)),
          Container(
            alignment: Alignment.center,
            width: MediaQuery.of(context).size.width * 0.6,
            padding: const EdgeInsets.all(20),
            margin: const EdgeInsets.symmetric(vertical: 20),
            decoration: BoxDecoration(
                gradient: primaryGradient,
                borderRadius: BorderRadius.circular(30)),
            child: const Text(
              "Submit",
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  letterSpacing: 1.2),
            ),
          )
        ]),
      ),
    );
  }
}
