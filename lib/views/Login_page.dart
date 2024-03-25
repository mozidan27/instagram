import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:instagram/views/create_new_account.dart';
import 'package:instagram/views/forgot_pass_page.dart';
import 'package:instagram/widgets/custom_outlined_button.dart';
import 'package:instagram/widgets/custom_text_email_field.dart';
import 'package:instagram/widgets/custom_text_password_field.dart';
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
                  const CustomButton(),
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
                            return const CreateNewAccount();
                          },
                        ));
                      },
                      child: const CustomOutlinedButton()),
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
