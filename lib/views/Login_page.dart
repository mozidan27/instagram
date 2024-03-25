import 'package:flutter/material.dart';
import 'package:instagram/widgets/custom_outlined_button.dart';
import 'package:instagram/widgets/custom_text_field.dart';
import 'package:instagram/widgets/login_buttom.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // Set the background gradient
      backgroundColor: Colors.black,
      extendBodyBehindAppBar: true,
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [
              Color.fromRGBO(45, 51, 55, 10),
              Color.fromRGBO(40, 46, 61, 10),
              Color.fromRGBO(29, 49, 65, 10),
              Color.fromRGBO(27, 52, 60, 10),
              Color.fromRGBO(28, 54, 53, 10),
            ],
          ),
        ),
        child: SizedBox(
          width: double.infinity,
          child: Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const Spacer(
                    flex: 3,
                  ),
                  SizedBox(
                    width: 75, // Specify the desired width
                    height: 75, // Specify the desired height
                    child: Image.asset(
                      'assets/images/logo.png',
                      fit: BoxFit.contain, // Adjust the fit based on your needs
                    ),
                  ),
                  const Spacer(
                    flex: 3,
                  ),
                  const CustomTextField(
                    hinttext: 'Username, email or mobile number',
                    labeltext: 'Username, email or mobile number',
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  const CustomTextField(
                    hinttext: 'Password',
                    labeltext: 'Password',
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  const CustomButton(),
                  const SizedBox(
                    height: 20,
                  ),
                  const Text(
                    'Forgot password?',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                        fontWeight: FontWeight.w500),
                  ),
                  const Spacer(
                    flex: 3,
                  ),
                  const CustomOutlinedButton(),
                  const SizedBox(
                    height: 20,
                  ),
                  SizedBox(
                    height: 13,
                    child: Image.asset(
                      'assets/images/meta.png',
                      color: Colors.white,
                    ),
                  ),
                  const Spacer(
                    flex: 1,
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
