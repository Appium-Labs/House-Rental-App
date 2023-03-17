import 'package:flutter/material.dart';

class RequestTile extends StatelessWidget {
  final String name;
  const RequestTile({super.key, required this.name});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(left: 20, right: 10, bottom: 15),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          CircleAvatar(
            radius: 23,
            foregroundImage: AssetImage("assets/images/DefaultProfile.png"),
          ),
          const SizedBox(
            width: 18,
          ),
          Text(
            name,
            style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
          ),
          const Spacer(),
          const IconButton(
              onPressed: null,
              icon: Icon(
                Icons.arrow_forward_ios,
                size: 20,
              ))
        ],
      ),
    );
  }
}
