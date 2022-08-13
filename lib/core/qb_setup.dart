import 'dart:developer';

import 'package:flutter/services.dart';
import 'package:my_chat/presentation/utils/const.dart';
import 'package:quickblox_sdk/quickblox_sdk.dart';

class QBSetup {
  static void init() async {
    try {
      await QB.settings.init(
        appId,
        authKey,
        authSecret,
        accountKey,
      );
      log("QB INIT SUCCESS", name: "INIT SUCCESS");
    } on PlatformException catch (e) {
      log(e.toString(), name: "INIT ERROR");
    }
  }

  void enableCarbons() async {
    try {
      await QB.settings.enableCarbons();
      log("CARBON ENABLED", name: "CARBON");
    } on PlatformException catch (e) {
      log(e.toString(), name: "CARBON");
    }
  }
}
