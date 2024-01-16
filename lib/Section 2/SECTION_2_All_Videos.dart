import 'dart:developer';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MediaQueryTest extends StatefulWidget {
  MediaQueryTest({super.key});

  @override
  State<MediaQueryTest> createState() => _MediaQueryTestState();
}

class _MediaQueryTestState extends State<MediaQueryTest> {
  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;

    return MobileBuilder();
  }
}

class MobileBuilder extends StatelessWidget {
  const MobileBuilder({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(body: LayoutBuilder(
      builder: (BuildContext context, BoxConstraints constraints) {
        log(constraints.maxWidth.toString());
        log(constraints.maxHeight.toString());
        if (constraints.maxWidth <= 500 ) {
          return const MobileLayout();
        }  if ((constraints.maxWidth >= 500) &&

            (constraints.maxWidth <= 1000 )) {
          return TabletLayout();
        } else {
          return const Center(child: Text("onther Layout"),);

        }
      },
    ));
  }
}

class TabletLayout extends StatefulWidget {
  TabletLayout({super.key});
  @override
  State<TabletLayout> createState() => _TabletLayoutState();
}

class _TabletLayoutState extends State<TabletLayout> {
  @override
  var number = 1;

  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: ListView.builder(
            itemCount: 10,
            itemBuilder: (BuildContext context, int index) {
              return GestureDetector(
                onTap: () {
                  number = index + 1;
                  setState(() {});
                },
                child: Container(
                  margin:
                  const EdgeInsets.only(right: 16, left: 16, bottom: 16),
                  color: Colors.blue,
                  child: ListTile(
                    title: Text(
                      '${index + 1}',
                    ),
                  ),
                ),
              );
            },
          ),
        ),
        Expanded(
          child: SizedBox(
            child: Center(
              child: Text("$number"),
            ),
          ),
        )
      ],
    );
  }
}

class MobileLayout extends StatelessWidget {
  const MobileLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 10,
      itemBuilder: (BuildContext context, int index) {
        return GestureDetector(
          onTap: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => DetailsView(
                      num: index + 1,
                    )));
          },
          child: Container(
            margin: const EdgeInsets.only(right: 16, left: 16, bottom: 16),
            color: Colors.blue,
            child: ListTile(
              title: Text(
                '${index + 1}',
              ),
            ),
          ),
        );
      },
    );
  }
}

class DetailsView extends StatelessWidget {
  const DetailsView({super.key, required this.num});
  final num;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Text("$num"),
      ),
    );
  }
}
