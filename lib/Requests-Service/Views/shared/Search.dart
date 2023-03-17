import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../Constants.dart';

class Search extends StatelessWidget {
  const Search({super.key});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(
          // enabled: true,
          contentPadding:
              EdgeInsets.symmetric(horizontal: padding_l, vertical: padding_m),
          prefixIcon: Padding(
            padding: EdgeInsets.all(padding_xs),
            child: SvgPicture.asset("assets/icons/search-normal.svg"),
          ),
          filled: true,
          fillColor: grey_bg_color,
          enabledBorder: OutlineInputBorder(
              borderSide:
                  const BorderSide(color: grey_border_color, width: 0.8),
              borderRadius: BorderRadius.circular(72)),
          focusedBorder: OutlineInputBorder(
              borderSide:
                  const BorderSide(color: grey_border_color, width: 0.8),
              borderRadius: BorderRadius.circular(72)),
          disabledBorder: OutlineInputBorder(
              borderSide:
                  const BorderSide(color: grey_border_color, width: 0.8),
              borderRadius: BorderRadius.circular(72)),
          hintText: "Search requests",
          hintStyle: TextStyle(
            fontWeight: FontWeight.w400,
            fontSize: font_m,
            color: grey_text_color,
            fontFamily: 'SF Pro Display',
            fontStyle: FontStyle.normal,
          )),
    );
  }
}
