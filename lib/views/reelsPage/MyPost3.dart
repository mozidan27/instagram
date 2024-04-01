import 'package:flutter/material.dart';
import 'package:instagram/views/utils/post_template.dart';

class MyPost3 extends StatelessWidget {
  const MyPost3({super.key});

  @override
  Widget build(BuildContext context) {
    return PostTemplate(
      description: 'instagram reels',
      username: 'thecodeness',
      numberoflikes: '1.2M',
      numberofcomment: '232',
      numberofshare: '3823',
      hishtags: '#reels #flutter #code',
      dots: '',
      userpost: Container(color: Colors.red),
    );
  }
}
