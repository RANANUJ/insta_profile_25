import 'package:flutter/material.dart';

class AccountTab2 extends StatelessWidget {
  final List<String> userPosts = [];

  AccountTab2({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        itemCount: 5,
        gridDelegate:
            const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3),
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.all(2.0),
            child: Container(
              color: Colors.green[100],
            ),
          );
        });
  }
}
