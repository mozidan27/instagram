import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:instagram/widgets/custom_text_email_field.dart';
import 'package:instagram/widgets/login_buttom.dart';

class RestCode extends StatelessWidget {
  const RestCode({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        iconTheme: const IconThemeData(color: Colors.white),
      ),
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
        child: const SizedBox(
          width: double.infinity,
          child: Expanded(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 24),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Gap(120),
                  Text(
                    'Confirm your account',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 26,
                        fontWeight: FontWeight.bold),
                  ),
                  Gap(10),
                  Text(
                    'We sent a code to your email. Enter that code to confir your account.',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                        fontWeight: FontWeight.w400),
                  ),
                  Text(
                    "Can't confirm account?",
                    style: TextStyle(
                        color: Colors.blue,
                        fontSize: 16,
                        fontWeight: FontWeight.w500),
                  ),
                  Gap(20),
                  CustomTextEmailField(
                      hinttext: 'Enter code', labeltext: 'Enter code'),
                  Gap(20),
                  CustomButton(
                    buttonText: 'Continue',
                  ),
                  Gap(20),
                  Center(
                    child: Text(
                      'Send code again',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                          fontWeight: FontWeight.w600),
                    ),
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
