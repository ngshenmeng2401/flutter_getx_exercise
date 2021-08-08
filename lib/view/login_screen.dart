import 'package:flutter/material.dart';
import 'package:flutter_getx_exercise1/controller/login_page_controller.dart';
import 'package:get/get.dart';

class LoginScreen extends GetView<LoginPageFunctionController> {
  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
        appBar: AppBar(
          title: Text("Login"),
        ),
        body: SingleChildScrollView(
          child: Form(
            // key: controller.loginFormKey,
            autovalidateMode: AutovalidateMode.onUserInteraction,
            child: Column(
              children: [
                Container(
                  // color: Colors.amber,
                  padding: const EdgeInsets.fromLTRB(0, 50, 0, 0),
                  child: Image.asset(
                    'assets/images/logo1.png',
                    height: screenHeight / 4,
                    width: screenWidth / 1.1,
                    // scale: 0.4,
                  ),
                ),
                Container(
                  margin: const EdgeInsets.fromLTRB(25, 10, 25, 10),
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.blue),
                    borderRadius: BorderRadius.all(Radius.circular(5)),
                  ),
                  child: Column(
                    children: [
                      GetBuilder<LoginPageFunctionController>(
                        init: LoginPageFunctionController(),
                        builder: (_) {
                          return ListTile(
                              leading: Icon(
                                Icons.email,
                                color: Colors.blue,
                              ),
                              title: TextFormField(
                                keyboardType: TextInputType.emailAddress,
                                controller: _.emailController,
                                decoration: InputDecoration(labelText: "Email"),
                                onSaved: (value) {
                                  controller.email = value!;
                                },
                                validator: (value) {
                                  return controller.validateEmail(value!);
                                },
                              ));
                        },
                      ),
                      GetBuilder<LoginPageFunctionController>(
                        init: LoginPageFunctionController(),
                        builder: (_) {
                          return ListTile(
                              leading: Icon(
                                Icons.lock,
                                color: Colors.blue,
                              ),
                              title: TextFormField(
                                controller: _.passwordController,
                                decoration:
                                    InputDecoration(labelText: "Password"),
                                obscureText: true,
                                onSaved: (value) {
                                  controller.password = value!;
                                },
                                validator: (value) {
                                  return controller.validatePassword(value!);
                                },
                              ));
                        },
                      ),
                      SizedBox(height: 10),
                    ],
                  ),
                ),
                Container(
                    margin: const EdgeInsets.fromLTRB(20, 0, 25, 0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            GetBuilder<LoginPageFunctionController>(
                              init: LoginPageFunctionController(),
                              builder: (controller) {
                                return Checkbox(
                                    value: controller.rememberMe,
                                    activeColor: Colors.blue,
                                    onChanged: (value) {
                                      controller.rememberEmailPassword(
                                          value!,
                                          controller.emailController.text
                                              .toString(),
                                          controller.passwordController.text
                                              .toString());
                                    });
                              },
                            ),
                            Text("Remember Me"),
                          ],
                        ),
                        GestureDetector(
                            onTap: () {},
                            child: Text(
                              "Forget Password",
                              style: TextStyle(
                                color: Colors.blue,
                                fontWeight: FontWeight.bold,
                              ),
                            )),
                      ],
                    )),
                MaterialButton(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    minWidth: screenWidth / 1.15,
                    height: screenHeight / 18,
                    color: Colors.blue,
                    child: Text("Login",
                        style: TextStyle(color: Colors.white, fontSize: 18)),
                    onPressed: () {
                      controller.checkLogin(controller.emailController.text.toString(),controller.passwordController.text.toString());
                    }),
                SizedBox(height: 10),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("Dont have an account ?"),
                    SizedBox(width: 15),
                    GestureDetector(
                        child: Text("Sign up",
                            style: TextStyle(
                              color: Colors.blue,
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                            )),
                        onTap: () {})
                  ],
                )
              ],
            ),
          ),
        ));
  }
}
