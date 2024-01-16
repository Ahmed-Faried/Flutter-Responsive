import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../Models/ListItemsDrawerModel.dart';
import 'CustomDrawerItemsListView.dart';
import 'CustomListItemsDrawer.dart';

class CustomDrawer extends StatefulWidget {
  const CustomDrawer({super.key});



  @override
  State<CustomDrawer> createState() => _CustomDrawerState();
}

class _CustomDrawerState extends State<CustomDrawer> {

  final List<ListItemsDrawerModel> listItems = const  [
     ListItemsDrawerModel(title: "D A S H B O A R D", icon: Icons.home_filled),
    ListItemsDrawerModel(title: "S E T T I N G S", icon: Icons.settings),
    ListItemsDrawerModel(title: "A B O U T", icon: Icons.info),
    ListItemsDrawerModel(title: "L O G O U T", icon: Icons.logout),
    ListItemsDrawerModel(title: "F R O I E D", icon: Icons.security),

  ];

  @override
  Widget build(BuildContext context) {
    return    Drawer(
      backgroundColor: const Color(0xffDFDFDFD),
      child: Column(
        children: [
          const DrawerHeader(
              child: Icon(
            Icons.bubble_chart,
            size: 48,
          )),
          CustomDrawerItemsListView(list: listItems, ),
        ],
      ),
    );
  }
}
