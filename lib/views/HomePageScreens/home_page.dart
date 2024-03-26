import 'package:flutter/material.dart';
import 'package:instagram/views/HomePageScreens/User_page.dart';
import 'package:instagram/views/HomePageScreens/Search_page.dart';
import 'package:instagram/views/HomePageScreens/post_page.dart';
import 'package:instagram/views/HomePageScreens/user_profile.dart';
import 'package:instagram/views/HomePageScreens/UserReels.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedIndex = 0;
  void _navigateButtonNavBar(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  final List<Widget> _children = [
    UserPage(),
    const SearchPage(),
    const PostPage(),
    const UserReels(),
    const UserProfile(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: _children[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        onTap: _navigateButtonNavBar,
        selectedItemColor: Colors.red,
        currentIndex: _selectedIndex,
        iconSize: 32,
        unselectedItemColor: Colors.white,
        backgroundColor: Colors.black,
        type: BottomNavigationBarType.fixed,
        showUnselectedLabels: false,
        showSelectedLabels: false,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: ''),
          BottomNavigationBarItem(icon: Icon(Icons.search), label: ''),
          BottomNavigationBarItem(icon: Icon(Icons.control_point), label: ''),
          BottomNavigationBarItem(
              icon: Icon(Icons.smart_display_outlined), label: ''),
          BottomNavigationBarItem(
              icon: Icon(Icons.account_circle_outlined), label: '')
        ],
      ),
    );
  }
}
