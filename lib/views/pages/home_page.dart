import 'package:flutter/material.dart';
import 'package:flutter_application_1/data/constants/defaults.dart';
import 'package:flutter_application_1/views/widgets/hero_widget.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(Defaults.padding),
      child: Column(
        spacing: Defaults.spacing,
        children: [
          HeroWidget(title: 'Welcome'),
          SizedBox(
            width: double.infinity,
            child: Card(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Card Title", style: KTextStyle.titleTextStyle),
                  Text(
                    "This is the card Description",
                    style: KTextStyle.descriptionTextStyle,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
