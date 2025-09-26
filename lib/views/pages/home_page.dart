import 'package:flutter/material.dart';
import 'package:flutter_application_1/data/constants/defaults.dart';
import 'package:flutter_application_1/views/widgets/Container_widget.dart';
import 'package:flutter_application_1/views/widgets/hero_widget.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final List<String> dataList = [
      Data.uiModification,
      Data.fixBug,
      Data.widget,
    ];

    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(Defaults.padding),
        child: Column(
          spacing: Defaults.spacingSm,
          children: [
            HeroWidget(title: 'Welcome', clickable: true),
            ...List.generate(dataList.length, (index) {
              return ContainerWidget(
                title: dataList.elementAt(index),
                description: 'This is the description of the topic covered',
              );
            }),
          ],

          // display data in array like array .map() ,
        ),
      ),
    );
  }
}
