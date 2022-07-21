import 'package:flutter/material.dart';
import 'package:twich_clone/screens/signup_screen.dart';
import 'package:twich_clone/screens/login_screen.dart';
import '../Widgets/custom_button.dart';

class OnboardingScreen extends StatelessWidget {
  static const routeName = '/onboarding';
  const OnboardingScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Padding(
      padding: const EdgeInsets.symmetric(horizontal: 18.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text(
            "Welcome to \nTwitch",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 40,
            ),
            textAlign: TextAlign.center,
          ),
          const SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 8.0),
            child: CustomButton(
                text: "Log In",
                onTap: () {
                  Navigator.pushNamed(context, LoginPage.routeName);
                }),
          ),
          CustomButton(
              text: "Sign Up",
              onTap: () {
                Navigator.pushNamed(context, SignUp.routeName);
              }),
        ],
      ),
    ));
  }
}
