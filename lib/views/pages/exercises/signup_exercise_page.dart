import 'package:flutter/material.dart';
import 'package:flutter_application_1/data/constants/defaults.dart';
import 'package:flutter_application_1/data/value_notifier.dart';
import 'package:flutter_application_1/views/pages/exercises/login_exercise_page.dart';

class SignupExercisePage extends StatefulWidget {
  const SignupExercisePage({super.key});

  @override
  State<SignupExercisePage> createState() => _SignupExercisePageState();
}

class _SignupExercisePageState extends State<SignupExercisePage> {
  @override
  Widget build(BuildContext context) {
    TextEditingController passwordController = TextEditingController();
    TextEditingController confirmPasswordController = TextEditingController();
    TextEditingController emailController = TextEditingController();
    TextEditingController usernameController = TextEditingController();

    final textInputFillColor = modeSwitchNotifier.value == true
        ? Colors.teal[50]
        : Color.fromARGB(81, 179, 214, 212);

    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Center(
            child: FractionallySizedBox(
              widthFactor: MediaQuery.of(context).size.width < 376
                  ? 1.0
                  : MediaQuery.of(context).size.width < 412
                  ? 0.9
                  : 0.75,
              child: Column(
                mainAxisSize: MainAxisSize.min, // 👈 important fix
                children: [
                  Center(
                    child: Column(
                      mainAxisSize: MainAxisSize.min, // 👈 also helps
                      children: [
                        SizedBox(
                          height: MediaQuery.of(context).size.height * 0.05,
                        ),
                        FittedBox(
                          child: Text(
                            "Sign Up",
                            style: TextStyle(
                              fontSize: 40,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        Text("Create you account"),
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
                          controller: usernameController,
                          decoration: InputDecoration(
                            fillColor: textInputFillColor,
                            filled: true,
                            hint: Text("Input your username"),
                            label: Text("Username"),
                            prefixIcon: Icon(Icons.person),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(
                                Defaults.borderRadius,
                              ),
                            ),
                          ),
                        ),
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
                        TextField(
                          controller: confirmPasswordController,
                          decoration: InputDecoration(
                            fillColor: textInputFillColor,
                            filled: true,
                            hint: Text("Confirm your password"),
                            label: Text("Confirm Password"),
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
                            child: Text('Sign up'),
                          ),
                        ),
                        Text("Or"),
                        SizedBox(
                          width: double.infinity,
                          child: OutlinedButton(
                            onPressed: () {},
                            child: Text("Sign in with Google"),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: MediaQuery.of(context).size.height * 0.05),

                  Center(
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Text("Already have an account?"),
                        TextButton(
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) {
                                  return LoginExercisePage();
                                },
                              ),
                            );
                          },
                          child: Text("Login"),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
