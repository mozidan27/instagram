import 'package:flutter/material.dart';

import 'package:instagram/views/reelsPage/MyPost1.dart';
import 'package:instagram/views/reelsPage/MyPost3.dart';
import 'package:instagram/views/reelsPage/Mypost2.dart';

class UserReels extends StatelessWidget {
  UserReels({super.key});
  final _controller = PageController(initialPage: 0);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        controller: _controller,
        scrollDirection: Axis.vertical,
        children: const [MyPost1(), MyPost2(), MyPost3()],
      ),
    );
  }
}
