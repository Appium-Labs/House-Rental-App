import 'package:flutter/material.dart';
import 'package:house_rental_app/Profile-Service/Views/shared/ProfileHeader.dart';
import 'package:house_rental_app/Profile-Service/Views/shared/ProfileOptions.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(
              height: 35,
            ),
            ProfileHeader(
              margin: 30,
            ),
            Container(
              margin: const EdgeInsets.symmetric(vertical: 20, horizontal: 10),
              height: 1,
              color: Colors.black.withOpacity(0.1),
            ),
            ProfileOptions()
          ],
        ),
      ),
    );
  }
}
