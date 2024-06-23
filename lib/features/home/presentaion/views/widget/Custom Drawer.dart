
import 'package:alafdal_app/features/home/presentaion/views/widget/TopSection_Drawer.dart';
import 'package:flutter/material.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      width: 300,
      child: Column(
        children: [
          TopSection_Drawer(),

        ],
      ),
    );
  }
}

