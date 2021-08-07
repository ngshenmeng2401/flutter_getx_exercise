import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LoginAuthMiddleware extends GetMiddleware {
  @override
  int? get priority => 0;

  // LoginAuthMiddleware({required this.priority});

  bool isAuthenticated = false; 

  @override
  RouteSettings? redirect(String? route) {

    // Future.delayed(Duration(seconds: 1), () => Get.snackbar("提示", "请先登录APP"));
    // return RouteSettings(name: '/login');

    if (isAuthenticated == false) {
      return RouteSettings(name: '/login');
    }
  }

  // This function will be called  before anything created we can use it to
  // change something about the page or give it new page
  @override
  GetPage? onPageCalled(GetPage? page) {
    return super.onPageCalled(page);
  }

  //This function will be called right before the Bindings are initialized.
  // Here we can change Bindings for this page.
  @override
  List<Bindings>? onBindingsStart(List<Bindings>? bindings) {
    return super.onBindingsStart(bindings);
  }

  //This function will be called right after the Bindings are initialized.
  // Here we can do something after  bindings created and before creating the page widget.
  @override
  GetPageBuilder? onPageBuildStart(GetPageBuilder? page) {
    return super.onPageBuildStart(page);
  }

  // Page build and widgets of page will be shown
  @override
  Widget onPageBuilt(Widget page) {
    return super.onPageBuilt(page);
  }

  //This function will be called right after disposing all the related objects
  // (Controllers, views, ...) of the page.
  @override
  void onPageDispose() {
    super.onPageDispose();
  }
}