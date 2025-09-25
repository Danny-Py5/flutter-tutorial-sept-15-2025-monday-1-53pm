import 'package:flutter/material.dart';
import 'package:flutter_application_1/data/constants/defaults.dart';

class ContainerWidget extends StatelessWidget {
  const ContainerWidget({
    super.key,
    required this.title,
    required this.description,
  });

  final String title;
  final String description;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Card(
        child: Padding(
          padding: const EdgeInsets.all(Defaults.padding),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(title, style: KTextStyle.titleTextStyle),
              Text(description, style: KTextStyle.descriptionTextStyle),
            ],
          ),
        ),
      ),
    );
  }
}
