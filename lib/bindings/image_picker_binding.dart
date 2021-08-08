import 'package:flutter_getx_exercise1/controller/image_picker_controller.dart';
import 'package:get/get.dart';


class ImagePickerBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<ImagePickerController>(
      () => ImagePickerController(),
    );
  }
}