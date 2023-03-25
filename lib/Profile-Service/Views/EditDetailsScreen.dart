import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:house_rental_app/Constants.dart';
import 'package:house_rental_app/Profile-Service/Controllers/ProfileController.dart';
import 'package:house_rental_app/Profile-Service/Views/shared/TextFeildContainer.dart';

class EditDetailsScreen extends StatelessWidget {
  const EditDetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    ProfileController controller = Get.find();

    TextEditingController phoneController = TextEditingController();
    TextEditingController ageController = TextEditingController();

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
          onPressed: () {
            Get.back();
            controller.phoneTap(false);
            controller.ageTapped(false);
          },
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
              GestureDetector(
                onTap: () => controller.openImage(),
                child: CircleAvatar(
                  radius: 50,
                  foregroundImage:
                      AssetImage("assets/images/DefaultProfile.png"),
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              const Text("Add Profile Image")
            ]),
          ),
          Obx(
            () => controller.user.value.phone != null &&
                    controller.phoneTapped.value == false
                ? GestureDetector(
                    onTap: () => controller.phoneTap(true),
                    child: Container(
                      margin: const EdgeInsets.symmetric(
                          vertical: 20, horizontal: 30),
                      child: Row(
                        children: [
                          Text("Phone:"),
                          Spacer(),
                          Container(
                            padding: EdgeInsets.symmetric(
                                horizontal: 9, vertical: 2),
                            decoration: BoxDecoration(
                                border:
                                    Border.all(width: 1, color: primaryBlue),
                                borderRadius: BorderRadius.circular(20)),
                            child: Row(
                              children: [
                                Text(controller.user.value.phone.toString()),
                                Icon(
                                  Icons.edit,
                                  color: primaryBlue,
                                  size: 17,
                                )
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                  )
                : TextFeildContainer(
                    controller: phoneController,
                    text: "Phone",
                    icon: const Icon(Icons.add_circle_outlined)),
          ),
          Obx(
            () => controller.user.value.age != null &&
                    controller.ageTapped.value == false
                ? GestureDetector(
                    onTap: () => controller.ageTap(true),
                    child: Container(
                      margin: const EdgeInsets.symmetric(
                          vertical: 20, horizontal: 30),
                      child: Row(
                        children: [
                          Text("Age:"),
                          Spacer(),
                          Container(
                            padding: EdgeInsets.symmetric(
                                horizontal: 9, vertical: 2),
                            decoration: BoxDecoration(
                                border:
                                    Border.all(width: 1, color: primaryBlue),
                                borderRadius: BorderRadius.circular(20)),
                            child: Row(
                              children: [
                                Text(controller.user.value.age.toString()),
                                Icon(
                                  Icons.edit,
                                  color: primaryBlue,
                                  size: 17,
                                )
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                  )
                : TextFeildContainer(
                    controller: ageController,
                    text: "Age",
                    icon: const Icon(Icons.add_circle_outlined)),
          ),
          Container(
            margin: const EdgeInsets.symmetric(vertical: 10, horizontal: 30),
            child: Obx(
              () => Row(
                children: [
                  const Text("Gender"),
                  const Spacer(),
                  RadioMenuButton(
                      value: controller.gender.value == 0,
                      groupValue: true,
                      onChanged: (value) {
                        controller.changeGender(0);
                      },
                      child: const Text("Male")),
                  RadioMenuButton(
                      value: controller.gender.value == 1,
                      groupValue: true,
                      onChanged: (value) {
                        controller.changeGender(1);
                      },
                      child: const Text("Female")),
                ],
              ),
            ),
          ),
          Container(
            margin: const EdgeInsets.symmetric(vertical: 10, horizontal: 30),
            child: Obx(
              () => Row(
                children: [
                  const Text("Married"),
                  const Spacer(),
                  RadioMenuButton(
                      value: controller.married.value,
                      groupValue: true,
                      onChanged: (value) {
                        controller.changeMarried(true);
                      },
                      child: const Text("Yes")),
                  RadioMenuButton(
                      value: !controller.married.value,
                      groupValue: true,
                      onChanged: (value) {
                        controller.changeMarried(false);
                      },
                      child: const Text("No")),
                ],
              ),
            ),
          ),
          GestureDetector(
            onTap: () async {
              if ((controller.phoneTapped.value &&
                      phoneController.text.toString().isEmpty) ||
                  (controller.ageTapped.value &&
                      ageController.text.toString().isEmpty)) {
                Get.snackbar("Imvalid", "Enter proper details");
              } else {
                if (phoneController.text.toString().isEmpty) {
                  phoneController.text = controller.user.value.phone.toString();
                }
                if (ageController.text.toString().isEmpty) {
                  ageController.text = controller.user.value.age.toString();
                }
                controller.editUserDetails(
                    int.parse(phoneController.text.toString()),
                    int.parse(ageController.text.toString()));
                controller.ageTap(false);
                controller.phoneTap(false);
                Get.back();
              }
            },
            child: Container(
              alignment: Alignment.center,
              width: MediaQuery.of(context).size.width * 0.6,
              padding: const EdgeInsets.all(20),
              margin: const EdgeInsets.symmetric(vertical: 60),
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
            ),
          )
        ]),
      ),
    );
  }
}
