import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:instagram/widgets/custom_outlined_button.dart';
import 'package:instagram/widgets/custom_text_email_field.dart';
import 'package:instagram/widgets/login_buttom.dart';

class ConfirmationCode extends StatelessWidget {
  const ConfirmationCode({super.key});

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
          height: double.infinity,
          width: double.infinity,
          child: SingleChildScrollView(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 24),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Gap(120),
                  Text(
                    "Enter the confirmation code",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 26,
                        fontWeight: FontWeight.bold),
                  ),
                  Gap(10),
                  Text(
                    'To confirm your account, enter the 6-digit code we sent via SMS to +2***********.',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                        fontWeight: FontWeight.w400),
                  ),
                  Gap(20),
                  CustomTextEmailField(
                      hinttext: 'Confirmation code',
                      labeltext: 'Confirmation code'),
                  Gap(20),
                  CustomButton(buttonText: "Next"),
                  Gap(15),
                  CustomOutlinedButton(
                    buttonText: "I didn't get the code",
                    borderColor: Colors.white,
                    textColor: Colors.white,
                    borderWidth: 0.2,
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
