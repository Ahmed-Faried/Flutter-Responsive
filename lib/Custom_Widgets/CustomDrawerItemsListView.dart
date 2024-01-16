import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../Models/ListItemsDrawerModel.dart';
import 'CustomListItemsDrawer.dart';

class CustomDrawerItemsListView extends StatelessWidget {
  const CustomDrawerItemsListView({super.key,required this.list});
    final List<ListItemsDrawerModel> list ;
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        shrinkWrap: true,
        physics: NeverScrollableScrollPhysics(),
        itemCount: list.length ,
        itemBuilder: (context, index) => CustomListItemsDrawer(
          listItemsDrawerModel: list[index],
        ));
  }
}
