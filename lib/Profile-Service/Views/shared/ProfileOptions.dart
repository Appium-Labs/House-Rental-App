import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:house_rental_app/Profile-Service/Views/ProfileDetailScreen.dart';
import 'package:house_rental_app/Profile-Service/Views/shared/Option.dart';

class ProfileOptions extends StatelessWidget {
  const ProfileOptions({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 10),
      child: Column(
        children: [
          InkWell(
            onTap: () => Get.to(ProfileDetailScrenn()),
            child: Option(
                text: "Profile Details",
                icon: SvgPicture.asset("assets/icons/ProfileBlack.svg")),
          ),
          InkWell(child: Option(text: "Edit Details", icon: Icon(Icons.edit))),
          InkWell(child: Option(text: "Log-Out", icon: Icon(Icons.logout))),
          InkWell(
            child: Option(
                text: "Switch to hosting",
                icon: SvgPicture.asset("assets/icons/Toggle.svg")),
          )
        ],
      ),
    );
  }
}