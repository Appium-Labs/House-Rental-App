import 'package:flutter/material.dart';
import 'package:house_rental_app/Feature-Login/Views/shared/ColoredButton.dart';
import 'package:house_rental_app/Feature-Login/Views/shared/TransparentButton.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
                margin: const EdgeInsets.only(top: 50),
                height: MediaQuery.of(context).size.height * 0.6,
                width: MediaQuery.of(context).size.width,
                foregroundDecoration: BoxDecoration(
                  gradient: LinearGradient(
                    colors: [
                      Colors.transparent,
                      Colors.transparent.withOpacity(0),
                      Colors.white,
                      Colors.white
                    ],
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    stops: const [0, 0, 0.95, 1],
                  ),
                ),
                child: const Image(
                  image: AssetImage("assets/images/Welcome.png"),
                  fit: BoxFit.cover,
                )),
            Container(
              alignment: Alignment.center,
              child: const Text(
                "New Place, New Home!",
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.w700),
              ),
            ),
            Container(
              margin: const EdgeInsets.symmetric(vertical: 10, horizontal: 22),
              alignment: Alignment.center,
              child: const Text(
                "Are you ready to uproot and start over in a new area? Placoo will help you on your journey!",
                overflow: TextOverflow.clip,
                maxLines: 2,
                textAlign: TextAlign.center,
                style: TextStyle(color: Color(0xff7D7F88)),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            GestureDetector(
              child: const ColoredButton(
                text: "Login",
                color: (Color(0xff6246EA)),
                textColor: Colors.white,
              ),
            ),
            GestureDetector(
              child: const TransparentButton(
                text: "Sign-up",
                color: Colors.white,
                textColor: Colors.black87,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
