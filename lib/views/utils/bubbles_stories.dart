import 'package:flutter/material.dart';

class BubblesStories extends StatelessWidget {
  const BubblesStories({super.key, required this.text});
  final String text;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          Container(
            width: 100,
            height: 100,
            decoration:
                BoxDecoration(color: Colors.grey[500], shape: BoxShape.circle),
          ),
          const SizedBox(
            height: 10,
          ),
          Text(
            text,
            style: const TextStyle(color: Colors.white),
          )
        ],
      ),
    );
  }
}
