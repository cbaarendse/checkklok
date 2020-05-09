import 'package:flutter/material.dart';
import 'package:admob_flutter/admob_flutter.dart';
import 'dart:io';

class AdBanner extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 7.0),
      color: Colors.black,
      child: AdmobBanner(
          adUnitId: getBannerAdUnitId(), adSize: AdmobBannerSize.BANNER),
    );
  }
}

String getBannerAdUnitId() {
  if (Platform.isIOS) {
    return 'ca-app-pub-9749360190619139/3631778586';
  } else if (Platform.isAndroid) {
    return 'ca-app-pub-9749360190619139/8308984642';
  }
  return null;
}
