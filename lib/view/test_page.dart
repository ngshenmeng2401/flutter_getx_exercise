import 'package:flutter/material.dart';
import 'package:flutter_getx_exercise1/controller/test_controller.dart';
import 'package:get/get.dart';

class TestPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Login"),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            GetBuilder<TestController>(
              init: TestController(),
              builder: (controller) {
                return ListTile(
                  title: Text("Blue"),
                  trailing: Radio(
                      value: controller.color[0],
                      groupValue: controller.selectRadioButton,
                      onChanged: (value) {
                        controller.onClickRadioButton(value);
                      }),
                );
              },
            ),
            GetBuilder<TestController>(
              init: TestController(),
              builder: (controller) {
                return ListTile(
                  title: Text("Green"),
                  trailing: Radio(
                      value: controller.color[1],
                      groupValue: controller.selectRadioButton,
                      onChanged: (value) {
                        controller.onClickRadioButton(value);
                      }),
                );
              },
            ),
            GetBuilder<TestController>(
              init: TestController(),
              builder: (controller) {
                return ListTile(
                  title: Text("Yellow"),
                  trailing: Radio(
                      value: controller.color[2],
                      groupValue: controller.selectRadioButton,
                      onChanged: (value) {
                        controller.onClickRadioButton(value);
                      }),
                );
              },
            ),
            GetBuilder<TestController>(
              init: TestController(),
              builder: (controller) {
                return ListTile(
                  title: Text("Red"),
                  trailing: Radio(
                      value: controller.color[3],
                      groupValue: controller.selectRadioButton,
                      onChanged: (value) {
                        controller.onClickRadioButton(value);
                      }),
                );
              },
            ),
            GetBuilder<TestController>(
              init: TestController(),
              builder: (controller) {
                return ListTile(
                  title: Text("Remember Me"),
                  trailing: Checkbox(
                    value: controller.rememberMe,
                    onChanged: (value) {
                      controller.onClickCheckBox(value);
                    }));
              },
            ),
            GetBuilder<TestController>(
              init: TestController(),
              builder: (controller) {
                return ListTile(
                  title: Text("Dark Mode"),
                  trailing: Switch(
                    value: controller.isDarkMode, 
                    onChanged: (value) {
                      controller.onClickSwitchButton(value);
                      Get.changeTheme(Get.isDarkMode 
                        ? ThemeData.light() 
                        : ThemeData.dark());
                    }));
              },
            ),
          ],
        ),
      ),
    );
  }
}
