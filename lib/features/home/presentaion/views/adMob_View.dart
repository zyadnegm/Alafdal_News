
import 'package:alafdal_app/features/home/presentaion/manager/admob/adManager.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';

class AdmobView extends StatefulWidget {
  const AdmobView({super.key});

  @override
  State<AdmobView> createState() => _AdmobViewState();
}

class _AdmobViewState extends State<AdmobView> {
  BannerAd? bannerAd;
  bool isLoaded = false;
  // load ad
  void load(){
  bannerAd = BannerAd(
  adUnitId: AdManager.adHome,
  request: const AdRequest(),
  size: AdSize.banner,
  listener: BannerAdListener(
  onAdLoaded: (ad) {
    print("Yessssssssssssssssssssssssssssss");
    setState(() {
      isLoaded=true;

    });

  },
  onAdFailedToLoad: (ad, error) {
    ad.dispose();
    print("Nooooooooooooooooooooooo");
  },
  ),
  )..load();

  // Called when an ad is successfully received.

}
@override
  void initState() {
    load();
  }
  @override
  void dispose() {
    if(isLoaded){
      bannerAd!.dispose();
    }
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.bottomCenter,
      child: SafeArea(
        child: isLoaded ?SizedBox(
          width: bannerAd!.size.width.toDouble().w,
          height: bannerAd!.size.height.toDouble().h,
          child: AdWidget(ad: bannerAd!),
        ):SizedBox(),
      ),
    );
  }
}
