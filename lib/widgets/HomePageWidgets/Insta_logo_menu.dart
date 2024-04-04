import 'package:flutter/material.dart';

class InstaLogoMenu extends StatelessWidget {
  const InstaLogoMenu({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 35,
          color: Colors.deepPurple[300],
        ),
        Container(
          height: 35,
          color: Colors.deepPurple[200],
        ),
      ],
    );
  }
}
