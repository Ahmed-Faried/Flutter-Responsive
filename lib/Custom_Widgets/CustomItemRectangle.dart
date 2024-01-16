import 'package:flutter/material.dart';

class CustomItemRectangle extends StatelessWidget {
  const CustomItemRectangle({super.key});

  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: const EdgeInsets.only(bottom: 10.0),
      child: Container(
        height: 50,
        width: double.infinity,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5),
          color: Colors.white70,
        ),
      ),
    );
  }
}
