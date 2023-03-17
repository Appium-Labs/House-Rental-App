import 'package:flutter/material.dart';

class ProfileHeader extends StatelessWidget {
  final double margin;
  const ProfileHeader({super.key, required this.margin});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: margin, bottom: 30),
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
