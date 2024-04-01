import 'package:flutter/material.dart';
import 'package:instagram/views/utils/post_template.dart';

class MyPost1 extends StatelessWidget {
  const MyPost1({super.key});

  @override
  Widget build(BuildContext context) {
    return PostTemplate(
      description: 'instagram reels',
      username: 'thecodeness',
      numberoflikes: '1.2M',
      numberofcomment: '232',
      numberofshare: '3823',
      hishtags: '#reels #flutter #code',
      userpost: Container(color: Colors.deepPurple),
      dots: '',
    );
  }
}
