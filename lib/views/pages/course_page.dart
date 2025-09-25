import 'package:flutter/material.dart';
import 'package:flutter_application_1/data/constants/defaults.dart';
import 'package:flutter_application_1/views/widgets/hero_widget.dart';

class CoursePage extends StatelessWidget {
  const CoursePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Course Page'), titleSpacing: 0),
      body: Padding(
        padding: const EdgeInsets.all(Defaults.padding),
        child: SingleChildScrollView(child: HeroWidget(title: "Course")),
      ),
    );
  }
}
