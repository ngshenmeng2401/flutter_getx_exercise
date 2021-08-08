import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_getx_exercise1/controller/image_picker_controller.dart';
import 'package:get/state_manager.dart';
import 'package:image_picker/image_picker.dart';

class ImagePickerPage extends GetView<ImagePickerController> {
  const ImagePickerPage({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Image Picker & Cropper")
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.fromLTRB(10, 50, 10, 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Obx(() => controller.compressImagePath.value == ''
                  ? Text(
                      'Select image from camera/galley',
                      style: TextStyle(fontSize: 20),
                    )
                  : Image.file(
                      File(controller.cropImagePath.value),
                        width: double.infinity,
                        height: 300,
                    ),
                ),
                SizedBox(height: 10),
                Obx(() => controller.compressImageSize.value == ''
                  ? Text("")
                  : Text(controller.compressImageSize.value,
                      style: TextStyle(fontSize:20),
                    ),
                ),
                SizedBox(height: 10),
                MaterialButton(
                  color: Colors.blue,
                  onPressed: () {
                    controller.getImage(ImageSource.camera);
                  },
                  child: Text("Camera"),
                ),
                SizedBox(height: 10),
                MaterialButton(
                  color: Colors.blue,
                  onPressed: () {
                    controller.getImage(ImageSource.gallery);
                  },
                  child: Text("Gallery"),
                ),
              ],),
          ),
        ),
      ),
    );
  }
}