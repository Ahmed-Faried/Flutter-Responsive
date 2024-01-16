import 'package:flutter/material.dart';

class CustomItemSquare extends StatelessWidget {
  const CustomItemSquare({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(5),
        color: Colors.grey,
      ),
    );
  }
}
