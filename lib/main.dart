import 'package:flutter/material.dart';
import 'package:get_storage/get_storage.dart';

import 'package:house_rental_app/HomePage-Service/Views/HomeScreen.dart';
import 'package:get/route_manager.dart';
import 'package:house_rental_app/Authentication-Service/Views/WelcomeScreen.dart';
import 'package:house_rental_app/MainScreen.dart';

import 'Constants.dart';

void main() async {
  await GetStorage.init();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    final prefs = GetStorage();
    var userId = prefs.read("user_id");
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(),
      home: userId != null ? MainScreen() : WelcomeScreen(),
    );
  }
}
