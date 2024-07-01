import 'package:flutter/material.dart';
import 'package:insta_profile_25/screens/bubble_stories.dart';
import 'package:insta_profile_25/util/account_tab1.dart';
import 'package:insta_profile_25/util/account_tab2.dart';
import 'package:insta_profile_25/util/account_tab3.dart';
import 'package:insta_profile_25/util/account_tab4.dart';

class UserAccount extends StatelessWidget {
  const UserAccount({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
          body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 0.0, top: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  width: 100,
                  height: 100,
                  decoration: BoxDecoration(
                    color: Colors.grey[300],
                    shape: BoxShape.circle,
                  ),
                ),
                const Expanded(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Column(
                        children: [
                          Text('469',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 16)),
                          Text('Posts'),
                        ],
                      ),
                      Column(
                        children: [
                          Text('143K',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 16)),
                          Text('Followers'),
                        ],
                      ),
                      Column(
                        children: [
                          Text('800',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 16)),
                          Text('Following'),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          const Padding(
            padding: EdgeInsets.all(2.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Anuj Rana',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(vertical: 2.0),
                  child: Text('I am a Mobile Developer'),
                ),
                Text(
                  'm.youtube.com/anujrana/',
                  style: TextStyle(color: Colors.blue),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Row(
              children: [
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(2.0),
                    child: Container(
                      padding: const EdgeInsets.all(5),
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.grey),
                        borderRadius: BorderRadius.circular(5),
                      ),
                      child: const Text('Following'),
                    ),
                  ),
                ),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(2.0),
                    child: Container(
                      padding: const EdgeInsets.all(5),
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.grey),
                        borderRadius: BorderRadius.circular(5),
                      ),
                      child: const Text('Message'),
                    ),
                  ),
                ),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(2.0),
                    child: Container(
                      padding: const EdgeInsets.all(5),
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.grey),
                        borderRadius: BorderRadius.circular(5),
                      ),
                      child: const Text('Subscribe'),
                    ),
                  ),
                ),
              ],
            ),
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.0),
            child: Row(
              children: [
                BubbleStories(text: 'Story 1'),
                BubbleStories(text: 'story 2'),
                BubbleStories(text: 'story 3'),
                BubbleStories(text: 'story 4'),
              ],
            ),
          ),
          const TabBar(tabs: [
            Tab(
              icon: Icon(Icons.grid_3x3_outlined),
            ),
            Tab(
              icon: Icon(Icons.video_call),
            ),
            Tab(
              icon: Icon(Icons.movie_filter_outlined),
            ),
            Tab(
              icon: Icon(Icons.person),
            ),
          ]),
          Expanded(
              child: TabBarView(children: [
            AccountTab1(),
            AccountTab2(),
            AccountTab3(),
            AccountTab4(),
          ]))
        ],
      )),
    );
  }
}
