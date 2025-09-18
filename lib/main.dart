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
      home: SafeArea(
        child: Scaffold(
          appBar: AppBar(
            title: Text('Flutter'),
            centerTitle: true,
            titleSpacing: 0,

            backgroundColor: const Color.fromARGB(255, 0, 116, 132),
          ),
          drawer: Drawer(
            child: Column(
              children: [
                DrawerHeader(child: Text('Options')),
                ListTile(title: Text("Setting"), leading: Icon(Icons.settings)),
                ListTile(
                  title: Text("Theme"),
                  leading: Icon(Icons.brightness_2),
                ),
                ListTile(
                  title: Text("Logout"),
                  leading: Icon(Icons.logout_outlined),
                ),
              ],
            ),
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
      ),
      debugShowCheckedModeBanner: false,
    );
  }
}
