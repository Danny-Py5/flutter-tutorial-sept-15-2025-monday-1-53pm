import 'package:flutter/material.dart';

class Defaults {
  static const double padding = 20;
  static const double paddingSm = 10;
  static final Color color = Colors.teal;
  static final double borderRadius = 15.0;
  static final double spacing = 8.0;
  static final double spacingSm = 4.0;
}

class Data {
  static final String uiModification = 'UI Modification';
  static final String fixBug = "Fix Bug";
  static final String widget = "Widget";
}

class KConstants {
  static final String themePreference = 'themePreference';
}

class KTextStyle {
  static final TextStyle titleTextStyle = TextStyle(
    color: Colors.teal,
    fontSize: 20,
    fontWeight: FontWeight.bold,
  );

  static final TextStyle descriptionTextStyle = TextStyle(fontSize: 16);
}
