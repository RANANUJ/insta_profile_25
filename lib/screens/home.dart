import 'package:flutter/material.dart';
import 'package:insta_profile_25/screens/bubble_stories.dart';
import 'package:insta_profile_25/util/user_posts.dart';
import 'package:google_fonts/google_fonts.dart';

class UserHome extends StatelessWidget {
  final List people = [
    'Anchal',
    'Abhay',
    'Tanya',
    'Parkash',
    'Swati',
    'Animesh',
    'Divyanshi',
    'Aryan'
  ];

  UserHome({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            backgroundColor: Colors.transparent,
            elevation: 0,
            title: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Instagram',
                  style: GoogleFonts.lato(),
                ),
                const Row(
                  children: [
                    Padding(
                      padding: EdgeInsets.all(24.0),
                      child: Icon(Icons.favorite),
                    ),
                    Icon(Icons.share),
                  ],
                ),
              ],
            )),
        body: Column(children: [
          SizedBox(
            height: 130,
            child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: people.length,
                itemBuilder: (context, index) {
                  return BubbleStories(text: people[index]);
                }),
          ),
          Expanded(
            child: ListView.builder(
                itemCount: people.length,
                itemBuilder: (context, index) {
                  return UserPosts(
                    name: people[index],
                  );
                }),
          )
        ]));
  }
}
