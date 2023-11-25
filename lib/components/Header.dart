import 'package:flutter/material.dart';

PreferredSizeWidget Header(BuildContext context) {
  return AppBar(
    backgroundColor: Colors.indigo, // Change the background color
    title: Text(
      'Parking Spot',
      style: TextStyle(
        fontSize: 20.0,
        fontWeight: FontWeight.bold,
        color: Colors.white, // Change the text color
      ),
    ),
    centerTitle: true,
  );
}
