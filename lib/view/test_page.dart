import 'package:flutter/material.dart';
import 'package:flutter_getx_exercise1/controller/test_controller.dart';
import 'package:get/get.dart';

class TestPage extends GetView<TestController> {
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
                  subtitle: Text("GetBuilder 方法"),
                  trailing: Radio(
                    value: controller.color[0],
                    groupValue: controller.selectColor,
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
                  subtitle: Text("GetBuilder 方法"),
                  trailing: Radio(
                    value: controller.color[1],
                    groupValue: controller.selectColor,
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
                  subtitle: Text("GetBuilder 方法"),
                  trailing: Radio(
                    value: controller.color[2],
                    groupValue: controller.selectColor,
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
                  subtitle: Text("GetBuilder 方法"),
                  trailing: Radio(
                    value: controller.color[3],
                    groupValue: controller.selectColor,
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
                  subtitle: Text("GetBuilder 方法"),
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
                  subtitle: Text("GetBuilder 方法"),
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
            Divider(
              color: Colors.blue[600],
            ),
            Obx(() => ListTile(
              title: Text("Male"),
              subtitle: Text("Obx 方法"),
              trailing: Radio(
                value: controller.gender[0],
                groupValue: controller.selectRadioButton, 
                onChanged: (value) {
                  controller.clickRadioButton(value);
                }
              ))),
            Obx(() => ListTile(
              title: Text("Female"),
              subtitle: Text("Obx 方法"),
              trailing: Radio(
                value: controller.gender[1],
                groupValue: controller.selectRadioButton, 
                onChanged: (value) {
                  controller.clickRadioButton(value);
                }
              ))),
            Obx(() => ListTile(
              title: Text("Remember Me"),
              subtitle: Text("Obx 方法"),
              trailing: Checkbox(
                value: controller.selectCheckbox, 
                onChanged: (value) {
                  controller.clickCheckbox(value);
                }
              ))),
            Obx(() => ListTile(
              title: Text("Dark Mode"),
              subtitle: Text("Obx 方法"),
              trailing: Switch(
                value: controller.selectSwitchbutton, 
                onChanged: (value) {
                  controller.clickSwitchButton(value);
                }
              ))),
          ],
        ),
      ),
    );
  }
}
