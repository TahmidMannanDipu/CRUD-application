import 'package:flutter/material.dart';

class AppStyle {
  static const TextStyle appBarStyle = TextStyle(
    fontWeight: FontWeight.bold,
    color: Colors.white,
  );

  static const TextStyle hintTextStyle = TextStyle(
    fontSize: 14,
    fontWeight: FontWeight.w500,
    color: Color(0xFFBDBDBD), // Equivalent to Colors.grey[400]
  );

  static TextStyle labelTextStyle(BuildContext context) {
    return TextStyle(
      color: Theme.of(context).primaryColor,
    );
  }

  static ButtonStyle elevatedButtonStyle(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double buttonHeight = screenHeight * 0.06;
    return ElevatedButton.styleFrom(
      backgroundColor: Theme.of(context).primaryColor,
      foregroundColor: Theme.of(context).colorScheme.onPrimary, // Text color
      textStyle: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
      minimumSize: Size(double.infinity, buttonHeight), // Optional
      shape: RoundedRectangleBorder(
        side: const BorderSide(
          width: double.infinity,
        ),
        borderRadius: BorderRadius.circular(8), // Optional border radius
      ),
    );
  }
}
