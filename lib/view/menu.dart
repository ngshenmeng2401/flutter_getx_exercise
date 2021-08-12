import 'package:flutter/material.dart';
import 'package:flutter_getx_exercise1/view/online_shopping_page.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'shopping_page.dart';

class MenuPage extends StatelessWidget {

  final userData = GetStorage();

  @override
  Widget build(BuildContext context) {

    userData.writeIfNull('isLogged', false);

    return Scaffold(

      appBar: AppBar(
        title: Text("Menu"),
      ),
      body:Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            ListTile(
              title: Text("Shopping"),
              subtitle: Text("Without API"),
              onTap: (){
                Get.to(ShoppingPage());
              },
            ),
            ListTile(
              title: Text("Online Shopping 1"),
              subtitle: Text("With API and HTTP method"),
              onTap: (){
                // Get.toNamed("/onlineshopping");
                Get.to(OnlineShoppingPage());
              },
            ),
            ListTile(
              title: Text("Online Shopping 2"),
              subtitle: Text("With API and GetConnect"),
              onTap: (){
                Get.toNamed("/onlineshopping2");
              },
            ),
            ListTile(
              title: Text("Login"),
              subtitle: Text("Middleware"),
              onTap: (){
                Get.toNamed("/login");
              },
            ),
            ListTile(
              title: Text("Button Page"),
              subtitle: Text("Test buttons"),
              onTap: (){
                Get.toNamed("/button");
              },
            ),
            ListTile(
              title: Text("Get Storage"),
              subtitle: Text("Keep User Login"),
              onTap: (){
                userData.read('isLogged') == false
                ? Get.toNamed("/onlineshopping")
                : Get.toNamed("/login");
              },
            ),
            ListTile(
              title: Text("Image Picker & Cropper"),
              subtitle: Text("From Camera & Gallery"),
              onTap: (){
                Get.toNamed("/imagepicker");
              },
            ),
          ],
        ),
      )
      
    );
  }
}