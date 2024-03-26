import 'package:flutter/material.dart';

class CustomTextEmailField extends StatefulWidget {
  const CustomTextEmailField(
      {super.key, required this.hinttext, required this.labeltext, this.icon});
  final String hinttext, labeltext;
  final IconData? icon;

  @override
  State<CustomTextEmailField> createState() => _CustomTextEmailFieldState();
}

class _CustomTextEmailFieldState extends State<CustomTextEmailField> {
  final _emailController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: _emailController,
      style: const TextStyle(color: Colors.white),
      decoration: InputDecoration(
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(16),
          borderSide: const BorderSide(color: Colors.white),
        ),
        labelText: widget.labeltext,
        labelStyle: const TextStyle(color: Colors.grey),
        floatingLabelBehavior: FloatingLabelBehavior.auto,
        floatingLabelStyle: const TextStyle(color: Colors.white, fontSize: 16),
        filled: true,
        fillColor: const Color(0xff1c2b33),
        hintText: widget.hinttext,
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(16)),
        hintStyle: TextStyle(color: Colors.grey[600]),
      ),
    );
  }
}
