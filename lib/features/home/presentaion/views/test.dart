import 'package:AlafdalNews/core/utils/Styles.dart';
import 'package:flutter/material.dart';

class TestScreen extends StatelessWidget {
  const TestScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Text(
          "Done",
          style: Styles.textStyle25.copyWith(color: Colors.black),
        ),
      ),
    );
  }
}
