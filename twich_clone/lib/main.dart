import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:twich_clone/screens/home_screen.dart';
import 'package:twich_clone/screens/login_screen.dart';
import 'package:twich_clone/screens/onboarding_screen.dart';
import 'package:twich_clone/screens/signup_screen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Twitch Demo',
      theme: ThemeData.light().copyWith(
        scaffoldBackgroundColor: Colors.white,
        appBarTheme: AppBarTheme.of(context).copyWith(
          backgroundColor: Colors.white,
          elevation: 0,
          titleTextStyle: const TextStyle(
              color: Colors.black, fontSize: 20, fontWeight: FontWeight.bold),
        ),
        iconTheme: const IconThemeData(
          color: Colors.black,
        ),
      ),
      routes: {
        OnboardingScreen.routeName: (context) => const OnboardingScreen(),
        LoginPage.routeName: (context) => const LoginPage(),
        SignUp.routeName: (context) => const SignUp(),
        HomeScreen.routeName:(context) => const HomeScreen(),
      },
      home: const OnboardingScreen(),
    );
  }
}
