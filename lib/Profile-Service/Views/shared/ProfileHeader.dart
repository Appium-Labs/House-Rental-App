import 'package:flutter/material.dart';

class ProfileHeader extends StatelessWidget {
  const ProfileHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 30),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            margin: const EdgeInsets.all(20),
            child: const CircleAvatar(
              radius: 50,
              backgroundColor: Colors.red,
              foregroundImage: AssetImage("assets/images/DefaultProfile.png"),
            ),
          ),
          const Text(
            "Lucy Bond",
            style: TextStyle(fontSize: 25, fontWeight: FontWeight.w600),
          ),
          const SizedBox(
            height: 5,
          ),
          const Text(
            "lucy@gmail.com",
            style: TextStyle(fontSize: 15, fontWeight: FontWeight.w300),
          )
        ],
      ),
    );
  }
}
