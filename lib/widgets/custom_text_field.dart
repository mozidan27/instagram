import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({
    super.key,
    required this.hinttext,
    required this.labeltext,
  });
  final String hinttext, labeltext;

  @override
  Widget build(BuildContext context) {
    return TextField(
      style: const TextStyle(color: Colors.white),
      decoration: InputDecoration(
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(16),
          borderSide: const BorderSide(color: Colors.white),
        ),
        labelText: labeltext,
        labelStyle: const TextStyle(color: Colors.grey),
        floatingLabelBehavior: FloatingLabelBehavior.auto,
        floatingLabelStyle: const TextStyle(color: Colors.white, fontSize: 16),
        filled: true,
        fillColor: const Color(0xff1c2b33),
        hintText: hinttext,
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(16)),
        hintStyle: TextStyle(color: Colors.grey[600]),
      ),
    );
  }
}
