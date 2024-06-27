import 'package:flutter/material.dart';
import 'package:insta_profile_25/util/reel_grid.dart';

class UserReels extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0.0,
          title: ClipRRect(
            borderRadius: BorderRadius.circular(8),
            child: Container(
              padding: EdgeInsets.all(8),
              color: Colors.grey[400],
              child: Row(
                children: [
                  Icon(
                    Icons.search,
                    color: Colors.grey[500],
                  ),
                  Container(
                    child: Text(
                      'Search',
                      style: TextStyle(color: Colors.grey[600]),
                    ),
                  )
                ],
              ),
            ),
          )),
      body: ReelGrid(),
    );
  }
}
