import 'package:alafdal_app/features/home/data/models/ArticalModel.dart';
import 'package:alafdal_app/features/home/presentaion/views/widget/NewDetails_body.dart';
import 'package:flutter/material.dart';

class News_Details extends StatelessWidget {
  const News_Details({super.key, required this.news});
  final Results news;

  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(
      body: NewDetails_Body(
        news: news,
      ),

    ));
  }
}
