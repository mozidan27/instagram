import 'package:flutter/material.dart';

class CustomOutlinedButton extends StatelessWidget {
  const CustomOutlinedButton({
    super.key,
    required this.buttonText,
    required this.borderColor,
    this.textColor,
    required this.borderWidth,
  });
  final String buttonText;
  final Color borderColor;
  final Color? textColor;
  final double borderWidth;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 50,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(50),
        color: Colors.transparent,
        border: Border.all(
          width: borderWidth,
          color: borderColor,
        ),
      ),
      child: Center(
        child: Text(
          buttonText,
          style: TextStyle(
              color: textColor, fontSize: 16, fontWeight: FontWeight.w500),
        ),
      ),
    );
  }
}
