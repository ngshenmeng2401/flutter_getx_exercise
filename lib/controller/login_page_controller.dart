import 'package:flutter/material.dart';
import 'package:flutter_getx_exercise1/view/online_shopping_page.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:shared_preferences/shared_preferences.dart';

class LoginPageFunctionController extends GetxController {
  
  final GlobalKey <FormState> loginFormKey = GlobalKey<FormState>();

  late TextEditingController emailController, passwordController;
  final userData = GetStorage(); 

  var email = '';
  var password = '';
  var rememberMe = false;
  
  @override
  void onInit() {

    super.onInit();
    emailController = TextEditingController();
    passwordController = TextEditingController();
    loadPreference();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    
  }

  @override
  void dispose() {
    emailController.dispose();
    passwordController.dispose();
    super.dispose();
  }

  String? validateEmail(String email) {
    if (!GetUtils.isEmail(email)) {
      return "Provide valid Email";
    }
    return null;
  }

  String? validatePassword(String password) {
    if (password.length < 6) {
      return "Password must be of 6 characters";
    }
    return null;
  }

  void checkLogin(email, password) {
    // final isValid = loginFormKey.currentState!.validate();
    // if (!isValid) {
    //   return;
    // }
    // loginFormKey.currentState!.save();

    if(email != "" && password != ""){
      print("Sucessful");

      userData.write("isLogged", true);
      userData.write("email", email);

      Get.to(OnlineShoppingPage());

    }else {

      Get.snackbar("Error", "Please enter your email and password !!!");
    }

  }

  void rememberEmailPassword (value, email, password){

    if(email.isEmpty || password.isEmpty){

      Get.bottomSheet(
        Container(
          height: 50,
          color: Colors.blue,
          child: Column(
            children: [
              Text("Email / Password is empty",
              style: TextStyle(
                color: Colors.white,
                fontSize: 14),)
            ],
          ),
        )
      );
      return;
    }
    // print(rememberMe);
    rememberMe = value;
    print(rememberMe);
    storePreference(value, email, password);
    update();
  }

  Future<void> storePreference(bool value,String email, String password) async {
    
    // SharedPreferences preferences = await SharedPreferences.getInstance();

    if(value==true){
      // await preferences.setString("email", email);
      // await preferences.setString("password", password);
      // await preferences.setBool("rememberme", value);

      userData.write("email", email);
      userData.write("password", password);
      userData.write("rememberme", value);

      Get.bottomSheet(
        Container(
          height: 50,
          color: Colors.blue,
          child: Column(
            children: [
              Text("Email & Password stored",
              style: TextStyle(
                color: Colors.white,
                fontSize: 14),)
            ],
          ),
        )
      );
    return;
    }else{  
      // await preferences.setString("email", '');
      // await preferences.setString("password", '');
      // await preferences.setBool("rememberme", value);

      userData.write("email", '');
      userData.write("password", '');
      userData.write("rememberme", value);

      Get.bottomSheet(
        Container(
          height: 50,
          color: Colors.blue,
          child: Column(
            children: [
              Text("Remove Email & Password",
              style: TextStyle(
                color: Colors.white,
                fontSize: 14),)
            ],
          ),
        )
      );
      emailController.text = "";
      passwordController.text = "";
      rememberMe = false ;
      update();
      return;
    }
  }

  Future<void> loadPreference()async {

    // SharedPreferences preferences = await SharedPreferences.getInstance();

    // String email = preferences.getString("email")??'';
    // String password = preferences.getString("password")??'';
    // rememberMe= (preferences.getBool("rememberme")??false);

    String email = userData.read("email")??'';
    String password = userData.read("password")??'';
    rememberMe= (userData.read("rememberme")??false);

    emailController.text=email;
    passwordController.text=password;
    update();
  }
}