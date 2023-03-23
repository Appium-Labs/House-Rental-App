import 'dart:convert';

import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:house_rental_app/Constants.dart';
import 'package:http/http.dart' as http;

class AuthenticationController extends GetxController {
  final prefs = GetStorage();

  RxBool isLoading = false.obs;

  @override
  void onInit() {
    super.onInit();
  }

  Future<bool> signUp(String email, String password, String userName) async {
    isLoading.value = true;
    var response = await http.post(
      Uri.parse(BASE_URL + SIGNUP_REQUEST),
      headers: <String, String>{
        'Content-Type': 'application/json',
      },
      body: jsonEncode(<String, String>{
        "email": email,
        "password": password,
        "name": userName
      }),
    );
    isLoading.value = false;
    if (response.statusCode == 201) {
      String userId = jsonDecode(response.body)["user_id"];
      prefs.write("user_id", userId);
      print(prefs.read("user_id"));
      return true;
    } else {
      print(jsonDecode(response.body));
      return false;
    }
  }

  Future<bool> login(String email, String password) async {
    isLoading.value = true;
    var response = await http.post(
      Uri.parse(BASE_URL + LOGIN_REQUEST),
      headers: <String, String>{
        'Content-Type': 'application/json',
      },
      body: jsonEncode(<String, String>{
        "email": email,
        "password": password,
      }),
    );
    isLoading.value = false;
    if (response.statusCode == 201) {
      String userId = jsonDecode(response.body)["user_id"];
      prefs.write("user_id", userId);
      print(userId);
      return true;
    } else {
      print(jsonDecode(response.body));
      return false;
    }
  }
}
