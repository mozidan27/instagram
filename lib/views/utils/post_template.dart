import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:instagram/views/utils/mybutton.dart';

class PostTemplate extends StatelessWidget {
  const PostTemplate(
      {super.key,
      required this.username,
      required this.description,
      required this.numberoflikes,
      required this.numberofcomment,
      required this.numberofshare,
      this.userpost,
      required this.hishtags,
      required this.dots});

  final String username,
      description,
      numberoflikes,
      numberofcomment,
      numberofshare,
      hishtags,
      dots;

  final userpost;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // user post (at the very back)
          userpost,
          //user info(name & caption)

          Padding(
            padding: const EdgeInsets.all(20),
            child: Container(
              alignment: const Alignment(-1, 1),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    '@$username',
                    style: const TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(
                    height: 8,
                  ),
                  RichText(
                      text: TextSpan(children: [
                    TextSpan(
                      text: description,
                    ),
                    TextSpan(
                        text: hishtags,
                        style: const TextStyle(
                          fontWeight: FontWeight.bold,
                        ))
                  ]))
                ],
              ),
            ),
          ),

          // post buttons

          Padding(
            padding: const EdgeInsets.only(right: 20, left: 20, top: 20),
            child: Container(
              alignment: const Alignment(1, 1),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Mybutton(icon: Icons.favorite_outline, number: numberoflikes),
                  Mybutton(
                      icon: Icons.chat_bubble_outline_sharp,
                      number: numberofcomment),
                  Mybutton(icon: Icons.send_outlined, number: numberofshare),
                  Mybutton(icon: Icons.more_horiz, number: dots),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
