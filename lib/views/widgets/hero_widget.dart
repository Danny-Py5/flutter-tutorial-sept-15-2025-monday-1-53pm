import 'package:flutter/material.dart';
import 'package:flutter_application_1/views/pages/course_page.dart';
import 'package:lottie/lottie.dart';

class HeroWidget extends StatelessWidget {
  const HeroWidget({
    super.key,
    required this.title,
    this.getStarted = false,
    this.clickable,
  });
  final String title;
  final bool getStarted;
  final bool? clickable;

  @override
  Widget build(BuildContext context) {
    if (getStarted == false) {
      return GestureDetector(
        onTap: clickable == true
            ? () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return CoursePage();
                    },
                  ),
                );
              }
            : () {},
        child: Stack(
          alignment: Alignment.center,
          children: [
            Hero(
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
            FittedBox(
              child: Text(
                title,
                style: TextStyle(fontSize: 40.0, fontWeight: FontWeight.bold),
              ),
            ),
          ],
        ),
      );
    } else {
      return Hero(
        tag: 'hero1',
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              height: 250,
              child: Lottie.asset('assets/lotties/login_success.json'),
            ),
            Center(
              child: FittedBox(
                child: Text(title, style: TextStyle(fontSize: 40.0)),
              ),
            ),
          ],
        ),
      );
    }
  }
}
