import 'package:flutter/material.dart';

class AddRemoveButton extends StatelessWidget {
  final String title;
  final int number;
  const AddRemoveButton({super.key, required this.title, required this.number});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 30, vertical: 10),
      child: Row(
        children: [
          Text(
            title,
            style: TextStyle(
                fontSize: 16, color: Colors.grey, fontWeight: FontWeight.bold),
          ),
          Spacer(),
          Icon(Icons.add_circle_outline_sharp),
          SizedBox(
            width: 7,
          ),
          Text(
            number.toString(),
            style: TextStyle(fontSize: 19),
          ),
          SizedBox(
            width: 7,
          ),
          Icon(
            Icons.remove_circle_outline,
          )
        ],
      ),
    );
  }
}
