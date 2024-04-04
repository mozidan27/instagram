import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:instagram/views/HomePageScreens/messages_page.dart';
import 'package:instagram/views/HomePageScreens/notification_page.dart';
import 'package:instagram/views/utils/bubbles_stories.dart';
import 'package:instagram/views/utils/user_posts.dart';
import 'package:instagram/widgets/HomePageWidgets/Insta_logo_menu.dart';
import 'package:popover/popover.dart';

class UserMainPage extends StatelessWidget {
  UserMainPage({super.key, Key});

  final List<String> people = [
    'Mohamed',
    'Sayed',
    'Mohamed',
    'Ahmed',
    'Zidan',
    'kareem',
    'Ali'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            floating: true,
            automaticallyImplyLeading: false,
            title: GestureDetector(
              onTap: () => showPopover(
                context: context,
                bodyBuilder: (context) => const InstaLogoMenu(),
                direction: PopoverDirection.top,
                height: 100,
                width: 250,
              ),
              child: SizedBox(
                height: 80,
                child: Image.asset(
                  'assets/images/textlogo.png',
                  color: Colors.white,
                ),
              ),
            ),
            actions: [
              GestureDetector(
                onTap: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) {
                        return const NotificationPage();
                      },
                    ),
                  );
                },
                child: const Icon(
                  Icons.favorite_border,
                  size: 32,
                  color: Colors.white,
                ),
              ),
              const SizedBox(
                width: 30,
              ),
              GestureDetector(
                onTap: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) {
                        return const MessagesPage();
                      },
                    ),
                  );
                },
                child: const Icon(
                  Icons.maps_ugc_outlined,
                  size: 32,
                  color: Colors.white,
                ),
              ),
              const SizedBox(
                width: 10,
              ),
            ],
          ),
          SliverToBoxAdapter(
            child: Column(
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
                ListView.builder(
                  padding: EdgeInsets.zero,
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  itemCount: people.length,
                  itemBuilder: (context, index) {
                    return UserPost(
                      username: people[index],
                    );
                  },
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
