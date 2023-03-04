import 'package:flutter/material.dart';

class BottomNavigationWidget {
  BottomNavigationBarItem bottomNavigationCard(
      {color,
      String? text,
      IconData? imageIcon,
      double height = 20,
      double width = 20,
      imagecolor}) {
    return BottomNavigationBarItem(
      backgroundColor: color,
      icon: Icon(imageIcon!),
      label: text,
    );
  }
}
