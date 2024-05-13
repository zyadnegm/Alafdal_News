import 'package:alafdal_app/core/utils/Colors.dart';
import 'package:alafdal_app/core/utils/Styles.dart';
import 'package:flutter/material.dart';

class TabBar_Text extends StatelessWidget {
  final String tabbat_text;
  const TabBar_Text({super.key,required this.tabbat_text});

  @override
  Widget build(BuildContext context) {
    return Text(tabbat_text,style: Styles.textStyle21.copyWith(color: white_color),);

  }
}
