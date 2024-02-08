import 'package:flutter/material.dart';

final divider = Divider(color: Colors.white.withOpacity(0.3), height: 1);
String getTitleByIndex(int index) {
  switch (index) {
    case 0:
      return 'Home';
    case 1:
      return 'Search';
    case 2:
      return 'People';
    case 3:
      return 'Favorites';
    case 4:
      return 'Custom iconWidget';
    case 5:
      return 'Profile';
    case 6:
      return 'Settings';
    default:
      return 'Not found page';
  }
}
Color primry=const Color(0xFFFC7D05);