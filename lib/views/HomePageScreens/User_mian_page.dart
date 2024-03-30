import 'package:flutter/material.dart';
import 'package:instagram/views/utils/bubbles_stories.dart';
import 'package:instagram/views/utils/user_posts.dart';

class UserMainPage extends StatelessWidget {
  final List people = [
    'Mohamed',
    'Sayed',
    'Mohamed',
    'Ahmed',
    'Zidan',
    'kareem',
    'Ali'
  ];

  UserMainPage({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        elevation: 0,
        title: SizedBox(
          height: 80,
          child: Image.asset(
            'assets/images/textlogo.png',
            color: Colors.white,
          ),
        ),
        actions: const [
          Icon(
            Icons.favorite_border,
            size: 32,
            color: Colors.white,
          ),
          SizedBox(
            width: 30,
          ),
          Icon(
            Icons.maps_ugc_outlined,
            size: 32,
            color: Colors.white,
          ),
          SizedBox(
            width: 10,
          ),
        ],
      ),
      body: Column(
        children: [
          SizedBox(
            height: 150,
            child: ListView.builder(
              itemCount: people.length,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                return BubblesStories(text: people[index]);
              },
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: people.length,
              itemBuilder: (context, index) {
                return UserPost(
                  username: people[index],
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
