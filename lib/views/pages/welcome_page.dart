import 'package:flutter/material.dart';
import 'package:flutter_application_1/data/constants/defaults.dart';
// import 'package:flutter_application_1/views/pages/get_started_page.dart';
import 'package:flutter_application_1/views/pages/login.dart';
// import 'package:flutter_application_1/views/widgets/hero_widget.dart';
import 'package:lottie/lottie.dart';

// import '../widget_tree.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(Defaults.padding),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Flutter App",
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  color: Defaults.color,
                ),
              ),
              Lottie.asset('assets/lotties/home.json', height: 400),
              Text(
                "Welcome Back!",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              SizedBox(
                width: double.infinity,
                child: FilledButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) {
                          return Login(title: 'Get Started');
                        },
                      ),
                    );
                  },
                  child: Text("Get Started!"),
                ),
              ),
              SizedBox(
                width: double.infinity,
                child: TextButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) {
                          return Login(title: 'Login');
                        },
                      ),
                    );
                  },
                  child: Text("Login"),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
