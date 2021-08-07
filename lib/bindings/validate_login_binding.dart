import 'package:flutter_getx_exercise1/controller/login_page_controller.dart';
import 'package:get/get.dart';

class ValidateLoginBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<LoginPageFunctionController>(
      () => LoginPageFunctionController(),
    );
  }
}