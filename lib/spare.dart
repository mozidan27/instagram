// import 'package:flutter/material.dart';
// import 'package:gap/gap.dart';
// import 'package:instagram/views/utils/bubbles_stories.dart';

// class UserProfileSpare extends StatelessWidget {
//   UserProfileSpare({super.key});
//   final List story = [
//     'drawing',
//     'me',
//     '2023',
//     'dahab',
//     'work',
//     'code',
//     'design'
//   ];
//   @override
//   Widget build(BuildContext context) {
//     return DefaultTabController(
//       length: 2,
//       child: Scaffold(
//         backgroundColor: Colors.black,
//         body: CustomScrollView(
//           slivers: [
//             const SliverAppBar(
//               // foregroundColor: Colors.amber,
//               actions: [
//                 Icon(
//                   Icons.alternate_email_sharp,
//                   color: Colors.white,
//                   size: 32,
//                 ),
//                 SizedBox(
//                   width: 20,
//                 ),
//                 Icon(
//                   Icons.control_point,
//                   color: Colors.white,
//                   size: 32,
//                 ),
//                 SizedBox(
//                   width: 20,
//                 ),
//                 Icon(
//                   Icons.menu,
//                   color: Colors.white,
//                   size: 32,
//                 ),
//                 SizedBox(
//                   width: 10,
//                 ),
//               ],
//               automaticallyImplyLeading: false,
//               backgroundColor: Colors.transparent,
//               title: Text(
//                 'mohamed_zidannn',
//                 style: TextStyle(
//                     color: Colors.white,
//                     fontSize: 28,
//                     fontWeight: FontWeight.bold),
//               ),
//             ),
//             SliverToBoxAdapter(
//               child: Padding(
//                 padding: const EdgeInsets.symmetric(horizontal: 8),
//                 child: Column(
//                   crossAxisAlignment: CrossAxisAlignment.start,
//                   children: [
//                     Row(
//                       mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                       children: [
//                         Padding(
//                           padding: const EdgeInsets.only(bottom: 16),
//                           child: Container(
//                             width: 120,
//                             height: 120,
//                             decoration: BoxDecoration(
//                               color: Colors.grey,
//                               shape: BoxShape.circle,
//                               border: Border.all(width: 6, color: Colors.white),
//                             ),
//                           ),
//                         ),
//                         const SizedBox(
//                           width: 270,
//                           child: Padding(
//                             padding: EdgeInsets.only(right: 40),
//                             child: Row(
//                               mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                               children: [
//                                 Column(
//                                   children: [
//                                     Text(
//                                       '32',
//                                       style: TextStyle(
//                                           color: Colors.white,
//                                           fontSize: 20,
//                                           fontWeight: FontWeight.bold),
//                                     ),
//                                     Text(
//                                       'posts',
//                                       style: TextStyle(
//                                           color: Colors.white,
//                                           fontSize: 18,
//                                           fontWeight: FontWeight.w400),
//                                     ),
//                                   ],
//                                 ),
//                                 Column(
//                                   children: [
//                                     Text(
//                                       '919',
//                                       style: TextStyle(
//                                           color: Colors.white,
//                                           fontSize: 20,
//                                           fontWeight: FontWeight.bold),
//                                     ),
//                                     Text(
//                                       'followers',
//                                       style: TextStyle(
//                                           color: Colors.white,
//                                           fontSize: 18,
//                                           fontWeight: FontWeight.w400),
//                                     ),
//                                   ],
//                                 ),
//                                 Column(
//                                   children: [
//                                     Text(
//                                       '412',
//                                       style: TextStyle(
//                                           color: Colors.white,
//                                           fontSize: 20,
//                                           fontWeight: FontWeight.bold),
//                                     ),
//                                     Text(
//                                       'following',
//                                       style: TextStyle(
//                                           color: Colors.white,
//                                           fontSize: 18,
//                                           fontWeight: FontWeight.w400),
//                                     ),
//                                   ],
//                                 ),
//                               ],
//                             ),
//                           ),
//                         ),
//                       ],
//                     ),
//                     const Text(
//                       'ziDan',
//                       style: TextStyle(
//                           color: Colors.white,
//                           fontSize: 18,
//                           fontWeight: FontWeight.w600),
//                     ),
//                     const Text(
//                       'Just evaluate yourself against your previous version of yourself.',
//                       style: TextStyle(
//                         color: Colors.white,
//                         fontSize: 16,
//                       ),
//                     ),
//                     const Text(
//                       'See Translation',
//                       style: TextStyle(
//                           color: Colors.white,
//                           fontSize: 16,
//                           fontWeight: FontWeight.w800),
//                     ),
//                     Padding(
//                       padding: const EdgeInsets.only(top: 24),
//                       child: Row(
//                         children: [
//                           Container(
//                             height: 35,
//                             width: 200,
//                             decoration: BoxDecoration(
//                                 border:
//                                     Border.all(color: Colors.white, width: 1.5),
//                                 borderRadius: BorderRadius.circular(8)),
//                             child: const Center(
//                               child: Text(
//                                 'Edit profile',
//                                 style: TextStyle(
//                                     color: Colors.white,
//                                     fontSize: 16,
//                                     fontWeight: FontWeight.w500),
//                               ),
//                             ),
//                           ),
//                           const Gap(5),
//                           Container(
//                             height: 35,
//                             width: 200,
//                             decoration: BoxDecoration(
//                                 border:
//                                     Border.all(color: Colors.white, width: 1.5),
//                                 borderRadius: BorderRadius.circular(8)),
//                             child: const Center(
//                               child: Text(
//                                 'Share profile',
//                                 style: TextStyle(
//                                     color: Colors.white,
//                                     fontSize: 16,
//                                     fontWeight: FontWeight.w500),
//                               ),
//                             ),
//                           ),
//                         ],
//                       ),
//                     ),
//                     SizedBox(
//                       height: 150,
//                       child: ListView.builder(
//                         itemCount: story.length,
//                         scrollDirection: Axis.horizontal,
//                         itemBuilder: (context, index) {
//                           return BubblesStories(text: story[index]);
//                         },
//                       ),
//                     ),
//                   ],
//                 ),
//               ),
//             ),
//           ],
//         ),
//         bottomNavigationBar:
//             const TabBar(tabs: [Icon(Icons.abc), Icon(Icons.abc)]),
//       ),
//     );
//   }
// }

