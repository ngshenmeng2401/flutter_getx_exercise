import 'package:flutter/material.dart';
import 'package:get/get.dart';

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
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            MaterialButton(
              minWidth: 70,
              color: Colors.blue,
              textColor: Colors.white,
              onPressed: () {
                Get.to(ShoppingPage());
              },
              child: Text("Shopping"),
            ),
            SizedBox(height: 50,),
            MaterialButton(
              minWidth: 70,
              color: Colors.blue,
              textColor: Colors.white,
              onPressed: () {
                Get.to(OnlineShoppingPage());
              },
              child: Text("Online Shopping"),
            )
          ],
        ),
      )
      
    );
  }
}