import 'package:flutter/cupertino.dart';
import 'package:flutter_responsive/Custom_Widgets/CustomListTablet.dart';
import 'CustomSliverGrid.dart';
import 'CustomSliverList.dart';

class Tablet_Layout extends StatelessWidget {
  const Tablet_Layout({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return  const Padding(
      padding: EdgeInsets.symmetric(horizontal: 16.0),
      child: CustomScrollView(slivers: [
        SliverToBoxAdapter(
          child: SizedBox(
            height: 16,
          ),
        ),
        SliverToBoxAdapter(child: Padding(
          padding: EdgeInsets.only(right: 16.0),
          child: CustomListTablet(),
        )) ,
        SliverToBoxAdapter(
          child: SizedBox(
            height: 12,
          ),
        ),
        CustomSliverList(),
      ]),
    );
  }
}
