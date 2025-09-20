import 'package:flutter/material.dart';

class HeroWidget extends StatelessWidget {
  const HeroWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Hero(
        tag: 'hero1',
        child: ClipRRect(
          borderRadius: BorderRadius.circular(20),
          child: Image.asset(
            color: Colors.teal,
            colorBlendMode: BlendMode.darken,
            'assets/images/R.jpg',
            height: 200,
            width: double.infinity,
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }
}
