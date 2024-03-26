import 'package:flutter/material.dart';
import 'package:instagram/views/WelcomePageScreens/signup_with_number.dart';
import 'package:instagram/views/WelcomePageScreens/forgot_pass_page.dart';
import 'package:instagram/views/HomePageScreens/home_page.dart';
import 'package:instagram/widgets/WelcomePageWidgets/custom_outlined_button.dart';
import 'package:instagram/widgets/WelcomePageWidgets/custom_text_email_field.dart';
import 'package:instagram/widgets/WelcomePageWidgets/custom_text_password_field.dart';
import 'package:instagram/widgets/WelcomePageWidgets/login_buttom.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // Set the background gradient

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
                    width: 90, // Specify the desired width
                    height: 90, // Specify the desired height
                    child: Image.asset(
                      'assets/images/logo.png',
                      fit: BoxFit.contain, // Adjust the fit based on your needs
                    ),
                  ),
                  const Spacer(
                    flex: 3,
                  ),
                  const CustomTextEmailField(
                    hinttext: 'Username, email or mobile number',
                    labeltext: 'Username, email or mobile number',
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  const CustomTextPasswordField(
                    hinttext: 'Password',
                    labeltext: 'Password',
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) {
                            return const HomePage();
                          },
                        ),
                      );
                    },
                    child: const CustomButton(
                      buttonText: 'Log in',
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(context, MaterialPageRoute(
                        builder: (context) {
                          return const ForgotPasswordPage();
                        },
                      ));
                    },
                    child: const Text(
                      'Forgot password?',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                          fontWeight: FontWeight.w500),
                    ),
                  ),
                  const Spacer(
                    flex: 3,
                  ),
                  GestureDetector(
                      onTap: () {
                        Navigator.push(context, MaterialPageRoute(
                          builder: (context) {
                            return const SignUpWithNumber();
                          },
                        ));
                      },
                      child: const CustomOutlinedButton(
                        buttonText: 'Create new account',
                        borderColor: Color(0xff0064e0),
                        textColor: Color(0xff0064e0),
                        borderWidth: 2,
                      )),
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
