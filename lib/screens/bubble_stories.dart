import 'package:flutter/material.dart';

class BubbleStories extends StatelessWidget {
  const BubbleStories({Key? key, required String text}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          width: 60,
          height: 60,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: Colors.grey[400],
          ),
        ));
  }
}
