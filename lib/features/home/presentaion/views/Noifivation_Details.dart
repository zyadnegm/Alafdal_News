import 'package:AlafdalNews/features/home/presentaion/views/widget/NoifivationDetails_Body.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

class NoifivationDetails extends StatelessWidget {
  const NoifivationDetails({super.key, required this.tittle});
  final String tittle;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
          appBar: AppBar(
            leading: InkWell(
                onTap: () {
                  GoRouter.of(context).pop();
                },
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 18),
                  child: Icon(
                    Icons.arrow_back_ios,
                    color: Colors.white,
                    size: 33.sp,
                  ),
                )),


          ),
          body: NoifivationDetails_Body(
            tittle: tittle,

          ),
        ));
  }
}

