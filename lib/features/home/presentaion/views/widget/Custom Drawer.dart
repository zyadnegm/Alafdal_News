import 'package:alafdal_app/core/utils/Colors.dart';
import 'package:alafdal_app/core/utils/Styles.dart';
import 'package:flutter/material.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(width: 300,
      child: Column(
        children: [
          Container(alignment: Alignment.center,
            width: double.infinity,
            height: 200,
            color: blue_color,
            child: Text(
              "Alafdal",
              style: Styles.textStyle25.copyWith(color: Colors.white),
            ),
          ),
        ],
      ),
    );
  }
}
