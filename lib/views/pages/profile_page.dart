import 'package:flutter/material.dart';
import 'package:flutter_application_1/data/constants/defaults.dart';
import 'package:flutter_application_1/data/value_notifier.dart';
import 'package:flutter_application_1/views/pages/exercises/login_exercise_page.dart';
import 'package:flutter_application_1/views/pages/welcome_page.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(Defaults.paddingSm),
            child: Container(
              padding: EdgeInsets.symmetric(vertical: 40),
              width: double.infinity,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: const Color.fromARGB(137, 23, 182, 161),
              ),
              child: Column(
                children: [
                  CircleAvatar(
                    radius: 100.0,
                    backgroundImage: AssetImage("assets/images/my_img.jpg"),
                  ),
                  SizedBox(height: 10),
                  Text(
                    'Daniel Olatunde',
                    style: TextStyle(fontSize: 25, fontWeight: FontWeight.w500),
                  ),
                  Text('The Developer', style: KTextStyle.descriptionTextStyle),
                ],
              ),
            ),
          ),
          ListTile(
            leading: Icon(Icons.logout_rounded),
            title: Text("Logout"),
            onTap: () {
              selectedPageNotifier.value = 0;
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return WelcomePage();
                  },
                ),
              );
            },
          ),
          ListTile(
            trailing: Icon(Icons.navigate_next),
            title: Text("Login Page design"),
            onTap: () {
              selectedPageNotifier.value = 0;
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return LoginExercisePage();
                  },
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
