import 'package:flutter/material.dart';

import '../../../Constants.dart';

class TextFeildContainer extends StatelessWidget {
  final TextEditingController controller;
  final String text;
  final Widget icon;
  const TextFeildContainer(
      {super.key,
      required this.controller,
      required this.text,
      required this.icon});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 7),
            child: Text(
              text,
              style: const TextStyle(fontSize: 15),
            ),
          ),
          TextField(
            onChanged: (value) {
              print(text + " " + value);
            },
            controller: controller,
            decoration: InputDecoration(
              fillColor: secondaryblue,
              border:
                  OutlineInputBorder(borderRadius: BorderRadius.circular(30)),
              hintText: "Enter Your ${text}",
              prefixIcon: icon,
              prefixIconColor: primaryBlue,
              contentPadding: const EdgeInsets.fromLTRB(10.0, 30.0, 10.0, 10.0),
              focusedBorder: OutlineInputBorder(
                borderSide: const BorderSide(color: primaryBlue),
                borderRadius: BorderRadius.circular(25.7),
              ),
            ),
          )
        ],
      ),
    );
  }
}
