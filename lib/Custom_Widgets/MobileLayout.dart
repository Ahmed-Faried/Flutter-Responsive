import 'package:flutter/cupertino.dart';
import 'CustomSliverGrid.dart';
import 'CustomSliverList.dart';

class Mobile_Layout extends StatelessWidget {
  const Mobile_Layout({
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
        CustomSliverGrid(),
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
