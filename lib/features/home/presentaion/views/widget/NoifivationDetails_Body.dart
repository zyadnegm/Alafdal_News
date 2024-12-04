import 'package:AlafdalNews/features/home/data/models/NotificationModel.dart';
import 'package:AlafdalNews/features/home/presentaion/manager/NewsCubit/News_states.dart';
import 'package:AlafdalNews/features/home/presentaion/manager/NewsCubit/Notification%20Cubit.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_html/flutter_html.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:share_plus/share_plus.dart';
import '../../../../../core/utils/Colors.dart';
import '../../../../../core/utils/Styles.dart';
import '../../manager/admob/adManager.dart';
import '../adMob_View.dart';

class NoifivationDetails_Body extends StatelessWidget {
  const NoifivationDetails_Body({super.key, required this.notificationModel});
  final NotificationModel notificationModel;

  @override
  Widget build(BuildContext context) {
    String imagehost = "https://alafdalnews.com/";

    print(notificationModel.related_id);
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 17.w, vertical: 5.h),
      child: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 18.h,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 5),
              child: AdmobView(id: AdManager.adHome2),
            ),
            Align(
              alignment: Alignment.center,
              child: Text(
               notificationModel.tittle,
                style: Styles.textStyle25
                    .copyWith(color: blue_color, fontWeight: FontWeight.w900),
                textAlign: TextAlign.right,
              ),
            ),
            SizedBox(
              height: 4.h,
            ),
            SizedBox(
              height: 4.h,
            ),
            BlocBuilder<Notification_Cubit,News_State>(
              builder: (context, state) {
                if(state is Notification_Success){

                  String imageurl= state.news.images??"";
                  return Column(
                    children: [
                      CachedNetworkImage(
                        imageUrl:imagehost+imageurl,
                      ),
                      SizedBox(
                        height: 4.h,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Text(
                            "مشاركة الخبر ",
                            style: Styles.textStyle18,
                          ),
                          InkWell(
                            onTap: () {

                              String contentToShare =
                                  '${notificationModel.tittle}\n\nhttps://alafdalnews.com/uploads/news/p5.png';
                              Share.share(contentToShare);
                            },
                            child: Align(
                              alignment: Alignment.centerRight,
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Icon(
                                  weight: 30,
                                  Icons.share,
                                  color: blue_color,
                                  size: 33.sp,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 20.h,
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 5),
                        child: AdmobView(id: AdManager.adHome3),
                      ),
                      SizedBox(
                        height: 8.h,
                      ),
                      Align(
                        alignment: Alignment.center,
                        child: Html(data: state.news.description ?? "", style: {
                          "p": Style(
                            textAlign: TextAlign.right,
                            fontSize: FontSize(21.sp),
                            fontWeight: FontWeight.w600,
                          )
                        }),
                      ),
                      SizedBox(
                        height: 12.h,
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 5),
                        child: AdmobView(id: AdManager.adHome3),
                      )
                    ],
                  );
                }
                else if(state is Notification_Faluire){
                  return Center(child: Text(state.error),);
                }else{
                  return Center(child: CircularProgressIndicator(),);
                }

              },
            ),

          ],
        ),
      ),
    );
  }
}
