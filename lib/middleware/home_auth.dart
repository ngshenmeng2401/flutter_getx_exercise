import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomePageAuth extends GetMiddleware {
  @override
  int? get priority => 0;

  // bool isHomePage = false;

  @override
  RouteSettings? redirect(String? route) {

    // Future.delayed(Duration(seconds: 1), () => Get.snackbar("提示", "请先登录APP"));
    return RouteSettings(name: '/onlineshopping');

    // if (isHomePage == false) {
    //   return RouteSettings(name: '/onlineshopping');
    // }
  }


}