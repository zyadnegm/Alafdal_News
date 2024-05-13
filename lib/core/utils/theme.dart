import 'package:alafdal_app/core/utils/Colors.dart';
import 'package:flutter/material.dart';


class My_theme {
  static ThemeData LightTheme = ThemeData(
      appBarTheme: AppBarTheme(
        backgroundColor: blue_color,
        centerTitle: true,
        shape: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.transparent),
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(28),
              bottomRight: Radius.circular(28),
            )

        ),

  ),
    scaffoldBackgroundColor: white_color
  );

}