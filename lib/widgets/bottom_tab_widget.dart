import 'package:flutter/material.dart';

class BottomTabWidget extends StatefulWidget {
  const BottomTabWidget({super.key});

  @override
  State<BottomTabWidget> createState() => _BottomTabWidgetState();
}

class _BottomTabWidgetState extends State<BottomTabWidget> {
  int currentTab = 0;
  @override
  Widget build(BuildContext context) {
    return NavigationBar(
      destinations: [
        NavigationDestination(icon: Icon(Icons.home), label: "Home"),
        NavigationDestination(icon: Icon(Icons.person), label: "Profile"),
      ],
      // Tab handler
      onDestinationSelected: (value) {
        currentTab = value;
        setState(() => currentTab);
      },
      selectedIndex: currentTab,
    );
  }
}
