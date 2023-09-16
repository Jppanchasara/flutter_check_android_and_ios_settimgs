import 'dart:io';

import 'package:exam/utills/displayfunction.dart';
import 'package:get/get.dart';

class HomeController extends GetxController {
  //TODO: Implement HomeController
  //tab
  var tabIndex = 0.obs;
  void changeTabIndex(int index) {
    tabIndex.value = index;
  }

  //isShowswicth
  var isSwitched = false.obs;
  void changeSwich(bool index) {
    isSwitched.value = index;
  }

  @override
  void onInit() {
    if (Platform.isAndroid) {
      DisplayFunction.isAndroid = true;
    } else {
      DisplayFunction.isAndroid = false;
    }
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }
}
