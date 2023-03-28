import 'dart:convert';

import 'package:get/get.dart';
import 'package:house_rental_app/Constants.dart';
import 'package:house_rental_app/HomePage-Service/Models/Properties.dart';
import 'package:http/http.dart' as http;

class PropertyController extends GetxController {
  Rx<Properties> property = Properties().obs;
  Rx<UserId> owner = UserId().obs;
  @override
  void onInit() {
    super.onInit();
  }

  getPropertyOwner() async {
    var ownerID = property.value.userId;
    // print(userId);
    // "/api/users/profile/id"
    var response = await http.get(
      Uri.parse("$BASE_URL/api/users/profile/$ownerID"),
      headers: <String, String>{
        'Content-Type': 'application/json',
      },
    );
    UserId currUser = UserId.fromJson(jsonDecode(response.body)["user"]);
    owner.value = currUser;
  }
}
