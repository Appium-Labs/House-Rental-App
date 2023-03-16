import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';
import 'package:house_rental_app/Authentication-Service/Views/WelcomeScreen.dart';

import 'Constants.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(),
      home: WelcomeScreen(),
    );
  }
}
