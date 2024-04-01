import 'package:flutter/material.dart';

class BubblesStoriesUP extends StatelessWidget {
  const BubblesStoriesUP({super.key, required this.text});
  final String text;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          Container(
            width: 80,
            height: 80,
            decoration: BoxDecoration(
                color: Colors.grey[500],
                shape: BoxShape.circle,
                border: Border.all(color: Colors.white, width: 3)),
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
