import 'package:flutter/material.dart';
import 'package:flutter_application_1/data/value_notifier.dart';
import 'package:flutter_application_1/views/pages/home_page.dart';
import 'package:flutter_application_1/views/pages/profile_page.dart';
import 'package:flutter_application_1/views/pages/settings.dart';
import 'package:flutter_application_1/views/widgets/bottom_tab_widget.dart';

List<Widget> myPages = [HomePage(), ProfilePage()];

class WidgetTree extends StatelessWidget {
  const WidgetTree({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Flutter'),
        centerTitle: true,
        titleSpacing: 0,
        actions: [
          IconButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return Settings(title: "Settings Page");
                  },
                ),
              );
            },
            icon: Icon(Icons.settings),
          ),
          ValueListenableBuilder(
            valueListenable: modeSwitchNotifier,
            builder: (BuildContext context, bool value, Widget? child) {
              return IconButton(
                onPressed: () {
                  modeSwitchNotifier.value = !value;
                },
                icon: modeSwitchNotifier.value == true
                    ? Icon(Icons.dark_mode)
                    : Icon(Icons.light_mode),
              );
            },
          ),
        ],
        // backgroundColor: const Color.fromARGB(255, 0, 116, 132),
      ),
      body: ValueListenableBuilder(
        valueListenable: selectedPageNotifier,
        builder: (BuildContext context, int value, Widget? child) {
          return myPages.elementAt(value);
        },
      ),
      drawer: SafeArea(
        child: Drawer(
          child: Column(
            children: [
              DrawerHeader(child: Text('Options')),
              ListTile(title: Text("Setting"), leading: Icon(Icons.settings)),
              ListTile(title: Text("Theme"), leading: Icon(Icons.brightness_2)),
              ListTile(
                title: Text("Logout"),
                leading: Icon(Icons.logout_outlined),
              ),
            ],
          ),
        ),
      ),

      bottomNavigationBar: const BottomTabWidget(),
    );
  }
}
