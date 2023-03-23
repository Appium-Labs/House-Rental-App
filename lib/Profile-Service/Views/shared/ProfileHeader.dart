import 'package:flutter/material.dart';

class ProfileHeader extends StatelessWidget {
  final String name;
  final String email;
  const ProfileHeader({super.key, required this.email, required this.name});

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
          Text(
            name,
            style: const TextStyle(fontSize: 25, fontWeight: FontWeight.w600),
          ),
          const SizedBox(
            height: 5,
          ),
          Text(
            email,
            style: const TextStyle(fontSize: 15, fontWeight: FontWeight.w300),
          )
        ],
      ),
    );
  }
}
