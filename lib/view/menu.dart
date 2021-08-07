import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'login_screen.dart';
import 'online_shopping_page.dart';
import 'shopping_page.dart';

class MenuPage extends StatelessWidget {
  const MenuPage({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
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
                Get.toNamed("/onlineshopping");
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
              title: Text("Test Page"),
              subtitle: Text("Test buttons"),
              onTap: (){
                Get.toNamed("/test");
              },
            ),
            // MaterialButton(
            //   minWidth: 70,
            //   color: Colors.blue,
            //   textColor: Colors.white,
            //   onPressed: () {
            //     Get.to(ShoppingPage());
            //   },
            //   child: Text("Shopping"),
            // ),
            // SizedBox(height: 30,),
            // MaterialButton(
            //   minWidth: 70,
            //   color: Colors.blue,
            //   textColor: Colors.white,
            //   onPressed: () {
            //     Get.toNamed("/onlineshopping");
            //   },
            //   child: Text("Online Shopping"),
            // ),
            // SizedBox(height: 30,),
            // MaterialButton(
            //   minWidth: 70,
            //   color: Colors.blue,
            //   textColor: Colors.white,
            //   onPressed: () {
            //     Get.to(LoginScreen());
            //   },
            //   child: Text("Login"),
            // )
          ],
        ),
      )
      
    );
  }
}