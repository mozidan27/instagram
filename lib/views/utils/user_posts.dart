import 'package:flutter/material.dart';

class UserPost extends StatelessWidget {
  const UserPost({super.key, required this.username});

  final String username;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                Container(
                  height: 50,
                  width: 50,
                  decoration: const BoxDecoration(
                      color: Colors.white, shape: BoxShape.circle),
                ),
                const SizedBox(
                  width: 10,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      username,
                      style: const TextStyle(color: Colors.white),
                    ),
                    const Text(
                      'mohamed_zidannn . Original audio',
                      style: TextStyle(color: Colors.white),
                    ),
                  ],
                ),
              ],
            ),
            const Icon(
              Icons.more_horiz,
              color: Colors.white,
            )
          ],
        ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 8),
          child: Container(
            color: Colors.grey,
            height: 400,
          ),
        ),
        const Padding(
          padding: EdgeInsets.only(bottom: 8),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  SizedBox(
                    width: 10,
                  ),
                  Icon(
                    Icons.favorite_border,
                    color: Colors.white,
                    size: 32,
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Icon(
                    Icons.chat_bubble_outline,
                    color: Colors.white,
                    size: 32,
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Icon(
                    Icons.ios_share_outlined,
                    color: Colors.white,
                    size: 32,
                  ),
                ],
              ),
              Icon(
                Icons.bookmark_outline,
                color: Colors.white,
                size: 32,
              ),
            ],
          ),
        ),
        const Row(
          children: [
            Padding(
              padding: EdgeInsets.only(left: 16),
              child: Text(
                'Liked by ',
                style: TextStyle(color: Colors.white),
              ),
            ),
            Text(
              'mohamed_zidannn ',
              style:
                  TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
            ),
            Text(
              'and ',
              style: TextStyle(color: Colors.white),
            ),
            Text(
              '12,589 others',
              style:
                  TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
            ),
          ],
        ),
        const SizedBox(
          height: 10,
        ),
        Padding(
          padding: const EdgeInsets.only(left: 16, bottom: 16),
          child: RichText(
            text: const TextSpan(children: [
              TextSpan(
                text: 'mohamed_zidannn ',
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
              TextSpan(
                text:
                    'Hello guys, iam a new flutter dev here and i bulit this app',
                style: TextStyle(
                  color: Colors.white,
                ),
              )
            ]),
          ),
        )
      ],
    );
  }
}
