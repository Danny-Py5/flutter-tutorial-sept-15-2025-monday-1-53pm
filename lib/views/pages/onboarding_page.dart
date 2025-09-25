import 'package:flutter/material.dart';
import 'package:flutter_application_1/data/constants/defaults.dart';
// import 'package:flutter_application_1/views/pages/get_started_page.dart';
import 'package:flutter_application_1/views/pages/login.dart';
import 'package:lottie/lottie.dart';

class OnboardingPage extends StatelessWidget {
  const OnboardingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(Defaults.padding),
          child: SingleChildScrollView(
            child: Column(
              spacing: 20.0,
              children: [
                Lottie.asset('assets/lotties/home.json'),
                Text(
                  "Flutter app is the application i build while learning Flutter",
                  style: KTextStyle.descriptionTextStyle,
                ),
                SizedBox(
                  width: double.infinity,
                  child: FilledButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) {
                            return Login(title: "Register");
                          },
                        ),
                      );
                    },
                    child: Text('Next >'),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
