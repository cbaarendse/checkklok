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
    return 'ca-app-pub-3940256099942544/2934735716';
  } else if (Platform.isAndroid) {
    return 'ca-app-pub-3940256099942544/6300978111';
  }
  return null;
}
