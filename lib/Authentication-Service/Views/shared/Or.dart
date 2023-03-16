
import 'package:flutter/material.dart';

import '../../../Constants.dart';

class Or extends StatelessWidget {
  const Or({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 10),
      child: Row(
        children: [
          Container(
            height: 0.6,
            width: MediaQuery.of(context).size.width * 0.45,
            color: secondaryblue.withOpacity(0.3),
          ),
          Container(
            padding: const EdgeInsets.all(8),
            decoration: BoxDecoration(
                color: secondaryblue.withOpacity(0.2),
                borderRadius: BorderRadius.circular(30)),
            child: const Text(
              "Or",
              style: TextStyle(color: secondaryblue),
            ),
          ),
          Container(
            height: 0.6,
            width: MediaQuery.of(context).size.width * 0.45,
            color: secondaryblue.withOpacity(0.3),
          ),
        ],
      ),
    );
  }
}
