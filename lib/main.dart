import 'package:flutter/material.dart';
import 'package:flutter_application_1/data/value_notifier.dart';
import 'package:flutter_application_1/views/pages/welcome_page.dart';
// import 'package:flutter_application_1/widgets/bottom_tab_widget.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
      valueListenable: modeSwitchNotifier,
      builder: (BuildContext context, bool mode, Widget? child) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          theme: ThemeData(
            colorScheme: ColorScheme.fromSeed(
              seedColor: Colors.teal,
              brightness: modeSwitchNotifier.value == true
                  ? Brightness.light
                  : Brightness.dark,
            ),
          ),
          home: WelcomePage(),
        );
      },
    );
  }
}
