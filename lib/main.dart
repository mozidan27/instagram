import 'package:flutter/material.dart';
import 'package:instagram/views/WelcomePageScreens/Login_page.dart';

void main() {
  runApp(const Instagram());
}

class Instagram extends StatelessWidget {
  const Instagram({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const LoginPage(),
      theme: ThemeData(brightness: Brightness.dark),
    );
  }
}
