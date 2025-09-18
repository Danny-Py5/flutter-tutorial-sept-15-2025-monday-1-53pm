import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: Colors.teal,
          brightness: Brightness.dark,
        ),
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text('Flutter'),
          centerTitle: false,
          titleSpacing: 0,
          actionsIconTheme: IconThemeData(color: Colors.orange),
          leading: Icon(Icons.people_alt),
          actions: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Icon(Icons.menu),
            ),
          ],
          backgroundColor: const Color.fromARGB(255, 0, 116, 132),
        ),
        floatingActionButton: Column(
          mainAxisSize: MainAxisSize.min,
          spacing: 8,
          children: [
            FloatingActionButton(
              onPressed: () {},
              focusColor: Colors.red,
              child: Icon(Icons.play_arrow),
            ),
            FloatingActionButton(
              onPressed: () {},
              child: Icon(Icons.download_for_offline_outlined),
            ),
          ],
        ),
        bottomNavigationBar: NavigationBar(
          destinations: [
            NavigationDestination(icon: Icon(Icons.home), label: "Home"),
            NavigationDestination(icon: Icon(Icons.person), label: "Profile"),
          ],
        ),
      ),
      debugShowCheckedModeBanner: false,
    );
  }
}
