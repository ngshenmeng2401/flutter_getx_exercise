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
                  title: Text("Male"),
                  trailing: Radio(
                      value: controller.gender[0],
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
                  title: Text("Female"),
                  trailing: Radio(
                      value: controller.gender[1],
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
          ],
        ),
      ),
    );
  }
}
