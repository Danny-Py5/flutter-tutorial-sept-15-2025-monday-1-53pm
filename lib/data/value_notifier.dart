import 'package:flutter/material.dart';

ValueNotifier<int> selectedPageNotifier = ValueNotifier(1);
ValueNotifier<bool> modeSwitchNotifier = ValueNotifier(false);


// ValueNotifier,  -> holds value 
// ValueListenableBuilder -> update value in the ValueNotifier and 
// allows other widgets to use if needed
