import 'package:flutter/material.dart';

class CustomOutlinedButton extends StatelessWidget {
  const CustomOutlinedButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 40,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(50),
        color: Colors.transparent,
        border: Border.all(
          color: const Color(0xff0064e0),
        ),
      ),
      child: const Center(
        child: Text(
          'Create new account',
          style: TextStyle(
              color: Color(0xff0064e0),
              fontSize: 16,
              fontWeight: FontWeight.w500),
        ),
      ),
    );
  }
}
