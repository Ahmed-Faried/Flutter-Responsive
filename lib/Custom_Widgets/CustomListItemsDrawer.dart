import 'package:flutter/material.dart';

import '../Models/ListItemsDrawerModel.dart';

class CustomListItemsDrawer extends StatelessWidget {
  const CustomListItemsDrawer({super.key ,required this.listItemsDrawerModel });

 final    ListItemsDrawerModel listItemsDrawerModel;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Icon(listItemsDrawerModel.icon),
      title: Text(listItemsDrawerModel.title),
    );
  }
}
