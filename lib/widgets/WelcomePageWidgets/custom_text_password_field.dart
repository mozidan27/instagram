import 'package:flutter/material.dart';

class CustomTextPasswordField extends StatefulWidget {
  const CustomTextPasswordField(
      {super.key, required this.hinttext, required this.labeltext});
  final String hinttext, labeltext;

  @override
  State<CustomTextPasswordField> createState() =>
      _CustomTextPasswordFieldState();
}

class _CustomTextPasswordFieldState extends State<CustomTextPasswordField> {
  final _passwordController = TextEditingController();
  bool obScure = true;
  void _visibilityCheck() {
    setState(() {
      obScure = !obScure;
    });
  }

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: _passwordController,
      obscureText: obScure,
      validator: (data) {
        if (data!.isEmpty) {
          return 'Field is required';
        }
        return null;
      },
      style: const TextStyle(color: Colors.white),
      decoration: InputDecoration(
        suffix: IconButton(
            onPressed: () {
              _visibilityCheck();
            },
            icon: obScure
                ? const Icon(
                    Icons.visibility_off,
                  )
                : const Icon(Icons.visibility)),
        contentPadding: const EdgeInsets.symmetric(horizontal: 14, vertical: 8),
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
