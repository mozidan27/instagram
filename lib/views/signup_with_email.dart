import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:instagram/views/confirm_mobile_number.dart';
import 'package:instagram/widgets/custom_outlined_button.dart';
import 'package:instagram/widgets/custom_text_email_field.dart';
import 'package:instagram/widgets/login_buttom.dart';

class SignUpWithEmail extends StatelessWidget {
  const SignUpWithEmail({super.key});

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
        child: SizedBox(
          width: double.infinity,
          child: Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Gap(120),
                  const Text(
                    "What's your Email?",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 26,
                        fontWeight: FontWeight.bold),
                  ),
                  const Gap(10),
                  const Text(
                    'Enter the email where you can be contacted. No one will see this on your profile',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                        fontWeight: FontWeight.w400),
                  ),
                  const Gap(20),
                  const CustomTextEmailField(
                      hinttext: 'Email', labeltext: 'Email'),
                  Text(
                    "You may receive SMS notifications from us for security and login purposes",
                    style: TextStyle(
                        color: Colors.grey[300],
                        fontSize: 12,
                        fontWeight: FontWeight.w600),
                  ),
                  const Gap(20),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(context, MaterialPageRoute(
                        builder: (context) {
                          return const ConfirmMobileNumber();
                        },
                      ));
                    },
                    child: const CustomButton(
                      buttonText: 'Next',
                    ),
                  ),
                  const Gap(15),
                  GestureDetector(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: const CustomOutlinedButton(
                      buttonText: 'Sign up with mobile number',
                      borderColor: Colors.white,
                      textColor: Colors.white,
                      borderWidth: 0.2,
                    ),
                  ),
                  const Spacer(),
                  GestureDetector(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: const Center(
                      child: Text(
                        'Already have an account?',
                        style: TextStyle(
                            color: Colors.blue,
                            fontSize: 14,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                  const Gap(40),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
