import 'package:flutter_getx_exercise1/controller/menu_controller.dart';
import 'package:get/get.dart';


class OnlineShoppingBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<OnlineShoppingController>(
      () => OnlineShoppingController(),
    );
  }
}