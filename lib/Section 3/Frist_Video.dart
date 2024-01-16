import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../Custom_Widgets/CustomDrawer.dart';
import '../Custom_Widgets/CustomListTablet.dart';
import '../Custom_Widgets/CustomSliverGrid.dart';
import '../Custom_Widgets/CustomSliverList.dart';

class First_UI extends StatefulWidget {
  const First_UI({super.key});

  @override
  State<First_UI> createState() => _First_UIState();
}

class _First_UIState extends State<First_UI> {
   @override

  GlobalKey<ScaffoldState> scaffoldKey = GlobalKey() ;

  Widget build(BuildContext context) {
    return Scaffold(
      key : scaffoldKey ,
      drawer: const CustomDrawer(),
      backgroundColor: const Color(0xffDBDBDB),
      appBar: AppBar(
        leading:  IconButton(
         onPressed: (){
          scaffoldKey.currentState!.openDrawer() ;
         },
          icon:   const Icon(Icons.menu,
            color: Colors.white,) ,

        ),
        backgroundColor: CupertinoColors.darkBackgroundGray,
        title: const Text(
          "UI_UX",
          style: TextStyle(color: Colors.white, fontSize: 22),
        ),
        centerTitle: true,
      ),
      body:  Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        child: CustomScrollView(slivers: [
          const SliverToBoxAdapter(
            child: SizedBox(
              height: 16,
            ),
          ),
          SliverToBoxAdapter(
            child: LayoutBuilder(
              builder: (context , constrains) {
                if(constrains.maxWidth >= 600 ){
                  return   CustomListTablet();
                }else{
                  return CustomSliverGrid();

                }
              }
            ),
          ),
          SliverToBoxAdapter(
            child: SizedBox(
              height: 12,
            ),
          ),
          CustomSliverList(),
        ]),
      ),
    );
  }
}