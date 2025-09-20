import 'package:flutter/material.dart';
import 'package:flutter_application_1/views/widgets/hero_widget.dart';

import '../widget_tree.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          HeroWidget(),
          FilledButton(
            onPressed: () {
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(
                  content: Text("Successfully Login"),
                  duration: Durations.extralong1,
                  behavior: SnackBarBehavior.floating,
                ),
              );
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return WidgetTree();
                  },
                ),
              );
            },
            child: Text("Login "),
          ),
        ],
      ),
    );
  }
}
