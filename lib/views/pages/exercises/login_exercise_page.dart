import 'package:flutter/material.dart';
import 'package:flutter_application_1/data/constants/defaults.dart';
import 'package:flutter_application_1/data/value_notifier.dart';
import 'package:flutter_application_1/views/pages/exercises/signup_exercise_page.dart';

class LoginExercisePage extends StatefulWidget {
  const LoginExercisePage({super.key});

  @override
  State<LoginExercisePage> createState() => _LoginExercisePageState();
}

class _LoginExercisePageState extends State<LoginExercisePage> {
  TextEditingController passwordController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  final textInputFillColor = modeSwitchNotifier.value == true
      ? Colors.teal[50]
      : Color.fromARGB(81, 179, 214, 212);

  @override
  void dispose() {
    passwordController.dispose();
    emailController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisSize: MainAxisSize.min, // 👈 important fix
            children: [
              Center(
                child: Column(
                  mainAxisSize: MainAxisSize.min, // 👈 also helps
                  children: [
                    SizedBox(height: MediaQuery.of(context).size.height * 0.05),
                    FittedBox(
                      child: Text(
                        "Welcome Back",
                        style: TextStyle(
                          fontSize: 40,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    Text("Enter your credentials to login"),
                  ],
                ),
              ),

              SizedBox(height: 50),

              Center(
                // inputs
                child: Column(
                  spacing: 20,
                  children: [
                    TextField(
                      controller: emailController,
                      decoration: InputDecoration(
                        fillColor: textInputFillColor,
                        filled: true,
                        hint: Text("Input Your Email Address here"),
                        label: Text("Email Address"),
                        prefixIcon: Icon(Icons.email),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(
                            Defaults.borderRadius,
                          ),
                        ),
                      ),
                    ),
                    TextField(
                      controller: passwordController,
                      decoration: InputDecoration(
                        fillColor: textInputFillColor,
                        filled: true,
                        hint: Text("Input your password"),
                        label: Text("Password"),
                        prefixIcon: Icon(Icons.password_sharp),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(
                            Defaults.borderRadius,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: double.infinity,
                      child: FilledButton(
                        onPressed: () {},
                        child: Text('Login '),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: MediaQuery.of(context).size.height * 0.05),
              TextButton(onPressed: () {}, child: Text("Forgotten password")),
              SizedBox(height: MediaQuery.of(context).size.height * 0.05),
              Center(
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text("Don't have an account?"),
                    TextButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) {
                              return SignupExercisePage();
                            },
                          ),
                        );
                      },
                      child: Text("Sign up"),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
