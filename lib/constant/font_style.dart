import 'package:flutter/material.dart';

// This class will have all the color constant which are using in the App.
class AppFontStyle {
  static TextStyle numberTextStyle() {
    return const TextStyle(
      fontFamily: 'Lato',
      fontWeight: FontWeight.bold,
      fontSize: 25,
    );
  }

  static TextStyle headerTextStyle() {
    return const TextStyle(
      fontFamily: 'Lato',
      fontWeight: FontWeight.bold,
      fontSize: 25,
    );
  }

  static TextStyle titleTextStyle() {
    return const TextStyle(
      fontFamily: 'Lato',
      fontWeight: FontWeight.normal,
      fontSize: 20,
    );
  }

  static TextStyle errorTextStyle() {
    return const TextStyle(
        fontFamily: 'Lato',
        fontWeight: FontWeight.normal,
        fontSize: 20,
        color: Colors.red);
  }

  static TextStyle successTextStyle() {
    return const TextStyle(
        fontFamily: 'Lato',
        fontWeight: FontWeight.normal,
        fontSize: 20,
        color: Colors.red);
  }
}
