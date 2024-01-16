import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'CustomItemRectangle.dart';

class CustomSliverList extends StatelessWidget {
  const CustomSliverList({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverList.builder(
        itemCount: 15,
        itemBuilder: (context, index) {
          return CustomItemRectangle();
        });
  }
}
