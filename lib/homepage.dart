import 'package:flutter/material.dart';
import 'package:insta_profile_25/screens/account.dart';
import 'package:insta_profile_25/screens/create.dart';
import 'package:insta_profile_25/screens/home.dart';
import 'package:insta_profile_25/screens/reels.dart';
import 'package:insta_profile_25/screens/search.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedIndex = 0;
  void _navigateBottomNavBar(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  //different pages to navigate to
  final List<Widget> _children = [
    UserHome(),
    UserSearch(),
    UserCreate(),
    UserReels(),
    UserAccount(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _children[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
          currentIndex: _selectedIndex,
          onTap: _navigateBottomNavBar,
          type: BottomNavigationBarType.fixed,
          items: const [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: 'HOME'),
            BottomNavigationBarItem(icon: Icon(Icons.search), label: 'SEARCH'),
            BottomNavigationBarItem(
                icon: Icon(Icons.add_box_outlined), label: 'CREATE'),
            BottomNavigationBarItem(
                icon: Icon(Icons.movie_filter_outlined), label: 'REELS'),
            BottomNavigationBarItem(icon: Icon(Icons.person), label: 'ACCOUNT'),
          ]),
    );
  }
}
