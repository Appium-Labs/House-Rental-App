import 'package:flutter/material.dart';

class Option extends StatelessWidget {
  final String text;
  final Widget icon;
  const Option({super.key, required this.text, required this.icon});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 10, horizontal: 5),
      child: Row(
        children: [
          Container(
            margin: const EdgeInsets.only(left: 12),
            // alignment: Alignment.center,
            height: 45,
            width: 45,
            padding: const EdgeInsets.all(10),
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(13),
                boxShadow: [
                  BoxShadow(
                      offset: const Offset(0, 1),
                      blurRadius: 10,
                      color: Colors.grey.withOpacity(0.3))
                ]),
            child: icon,
          ),
          const SizedBox(
            width: 15,
          ),
          Text(
            text,
            style: const TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
          ),
          const Spacer(),
          const IconButton(
              onPressed: null,
              icon: Icon(
                Icons.arrow_forward_ios,
                size: 18,
                color: Colors.grey,
              ))
        ],
      ),
    );
  }
}
