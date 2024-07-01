import 'package:flutter/material.dart';

class ReelGrid extends StatelessWidget {
  const ReelGrid({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        gridDelegate:
            const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 1),
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.all(2.0),
            child: Container(
              color: const Color.fromARGB(255, 221, 151, 174),
            ),
          );
        });
  }
}
