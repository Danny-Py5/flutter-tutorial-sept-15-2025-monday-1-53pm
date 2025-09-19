import 'package:flutter/material.dart';

ValueNotifier<int> selectedPageNotifier = ValueNotifier(0);
ValueNotifier<bool> modeSwitchNotifier = ValueNotifier(true);


// ValueNotifier,  -> holds value 
// ValueListenableBuilder -> update value in the ValueNotifier and 
// allows other widgets to use if needed
