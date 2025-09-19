import 'package:flutter/material.dart';
import 'package:flutter_application_1/widgets/bottom_tab_widget.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int currentTab = 0;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
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

          bottomNavigationBar: const BottomTabWidget(),
        ),
      ),
    );
  }
}
