
import 'package:flutter/cupertino.dart';

import 'CustomItemSquare.dart';

class CustomListTablet extends StatelessWidget {
  const CustomListTablet({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 125,
      child: ListView.builder(
          scrollDirection:  Axis.horizontal,
          itemCount: 6,
          itemBuilder: (context, index) {
            return const Padding(
              padding: EdgeInsets.only(right: 16.0),
              child: AspectRatio(aspectRatio: 1,
              child: CustomItemSquare()),
            );
          }),
    );
  }
}
