import 'package:flutter/material.dart';
import 'package:flutter_application_1/data/constants/defaults.dart';
import 'package:flutter_application_1/views/widget_tree.dart';
// import 'package:flutter_application_1/data/constants/defaults.dart';
import 'package:flutter_application_1/views/widgets/hero_widget.dart';

class Login extends StatefulWidget {
  const Login({super.key, required this.title});

  final String title;

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final TextEditingController controllerEmail = TextEditingController(
    text: '111',
  );
  final TextEditingController controllerPw = TextEditingController(text: '111');

  final String confirmedEmail = '111';
  final String confirmedPw = '111';

  // when the screen is not active, dispose the controllers `n save memory leak
  @override
  void dispose() {
    controllerEmail.dispose();
    controllerPw.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(Defaults.padding),
          child: SingleChildScrollView(
            child: LayoutBuilder(
              builder: (context, constraints) {
                return FractionallySizedBox(
                  widthFactor: constraints.maxWidth < 376
                      ? 1.0
                      : constraints.maxWidth < 412
                      ? 0.9
                      : 0.75,
                  child: Column(
                    // mainAxisSize: constraints.maxWidth ,
                    spacing: 20,
                    children: [
                      HeroWidget(title: widget.title),
                      TextField(
                        controller: controllerEmail,
                        onEditingComplete: () {
                          setState(() {});
                        },
                        decoration: InputDecoration(
                          hintText: "Email",
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(
                              Defaults.borderRadius,
                            ),
                          ),
                        ),
                      ),
                      TextField(
                        controller: controllerPw,
                        onEditingComplete: () => setState(() => {}),
                        decoration: InputDecoration(
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(
                              Defaults.borderRadius,
                            ),
                          ),
                          hintText: "Password",
                        ),
                      ),
                      SizedBox(
                        width: double.infinity,
                        child: FilledButton(
                          onPressed: () {
                            if (controllerEmail.text == confirmedEmail &&
                                controllerPw.text == confirmedPw) {
                              Navigator.pushAndRemoveUntil(
                                context,
                                MaterialPageRoute(
                                  builder: (context) {
                                    return WidgetTree();
                                  },
                                ),
                                (route) => false,
                              );
                            } else {
                              ScaffoldMessenger.of(context).showSnackBar(
                                SnackBar(content: Text("Invalid credentials")),
                              );
                            }
                          },
                          child: Text(widget.title),
                        ),
                      ),
                    ],
                  ),
                );
              },
            ),
          ),
        ),
      ),
    );
  }
}
