import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:gap/gap.dart';
import 'package:instagram/views/WelcomePageScreens/confirmation_code.dart';
import 'package:instagram/widgets/WelcomePageWidgets/login_buttom.dart';

class ConfirmMobileNumber extends StatelessWidget {
  const ConfirmMobileNumber({super.key});

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
          height: double.infinity,
          width: double.infinity,
          child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Gap(120),
                  const Text(
                    "Confirm your mobile number",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 26,
                        fontWeight: FontWeight.bold),
                  ),
                  const Gap(10),
                  const Text(
                    "We'll send a 6-digit code to +20********. Select how you want to get the code.",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                        fontWeight: FontWeight.w400),
                  ),
                  const Gap(30),
                  Container(
                    height: 50,
                    width: double.infinity,
                    decoration: const BoxDecoration(
                      color: Color(0xff1c2b33),
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(16),
                        topRight: Radius.circular(16),
                      ),
                    ),
                    child: const Row(
                      children: [
                        Gap(18),
                        FaIcon(
                          FontAwesomeIcons.whatsapp,
                          color: Colors.white,
                        ),
                        Gap(18),
                        Text(
                          'Send code via WhatsApp',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 18,
                              fontWeight: FontWeight.w500),
                        ),
                        Gap(70),
                        FaIcon(
                          FontAwesomeIcons.circleDot,
                          color: Colors.white,
                          size: 20,
                        ),
                      ],
                    ),
                  ),
                  const Divider(
                    height: 0,
                    thickness: 0.1,
                  ),
                  Container(
                    height: 50,
                    width: double.infinity,
                    decoration: const BoxDecoration(
                      color: Color(0xff1c2b33),
                      borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(16),
                        bottomRight: Radius.circular(16),
                      ),
                    ),
                    child: const Row(
                      children: [
                        Gap(18),
                        FaIcon(
                          FontAwesomeIcons.message,
                          color: Colors.white,
                        ),
                        Gap(18),
                        Text(
                          'Send code via SMS',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 18,
                              fontWeight: FontWeight.w500),
                        ),
                        Gap(118),
                        FaIcon(
                          FontAwesomeIcons.circleDot,
                          color: Colors.white,
                          size: 20,
                        ),
                      ],
                    ),
                  ),
                  const Gap(20),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) {
                            return const ConfirmationCode();
                          },
                        ),
                      );
                    },
                    child: const CustomButton(
                      buttonText: 'Send code',
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
