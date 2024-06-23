import 'package:flutter/material.dart';

class Social_Icon extends StatelessWidget {
  const Social_Icon({super.key, required this.image});

  final String image;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 40,
      height: 40,
      child: Image.asset(image),
    );
  }
}
