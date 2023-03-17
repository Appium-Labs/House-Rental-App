import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:house_rental_app/Feature-HomePage/Views/HomeScreen.dart';

import '../../Constants.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int _selectedIndex = 0;
  static const List<Widget> _widgetOptions = <Widget>[
    HomeScreen(),
    Explore(),
    Request(),
    Saved(),
    Profile(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            activeIcon: SvgPicture.asset(
              "assets/icons/home.svg",
              color: primaryBlue,
              // cacheColorFilter: true,
            ),
            icon: SvgPicture.asset(
              "assets/icons/home.svg",
            ),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            activeIcon: SvgPicture.asset(
              color: primaryBlue,
              "assets/icons/signpost.svg",
              // colorFilter: ColorFilter.mode(color, blendMode),
            ),
            icon: SvgPicture.asset("assets/icons/signpost.svg"),
            label: 'Explore',
          ),
          BottomNavigationBarItem(
            activeIcon: SvgPicture.asset(
              color: primaryBlue,
              "assets/icons/message-text.svg",
            ),
            icon: SvgPicture.asset("assets/icons/message-text.svg"),
            label: 'Request',
          ),
          BottomNavigationBarItem(
            activeIcon: SvgPicture.asset(
              "assets/icons/heart.svg",
              color: primaryBlue,
            ),
            icon: SvgPicture.asset("assets/icons/heart.svg"),
            label: 'Saved',
          ),
          BottomNavigationBarItem(
            activeIcon: SvgPicture.asset(
              "assets/icons/Profile.svg",
              color: primaryBlue,
            ),
            icon: SvgPicture.asset(
              "assets/icons/Profile.svg",
            ),
            label: 'Profile',
          ),
        ],
        currentIndex: _selectedIndex,
        showSelectedLabels: true,
        showUnselectedLabels: true,
        selectedItemColor: primaryBlue,
        unselectedItemColor: grey_text_color,
        onTap: _onItemTapped,
      ),
    );
  }
}
