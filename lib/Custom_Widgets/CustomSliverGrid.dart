import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'CustomItemSquare.dart';

class CustomSliverGrid extends StatelessWidget {
  const CustomSliverGrid({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverGrid.builder(

        gridDelegate:  const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            childAspectRatio: 1,
            crossAxisSpacing: 10,
            mainAxisSpacing: 10),

        itemCount: 4,
        itemBuilder: (BuildContext, int) {
          return const CustomItemSquare();
        })
    ;
  }
}
