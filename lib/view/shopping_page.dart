import 'package:flutter/material.dart';
import 'package:flutter_getx_exercise1/controller/cart_controller.dart';
import 'package:flutter_getx_exercise1/controller/shopping_controller.dart';
import 'package:get/get.dart';

class ShoppingPage extends StatelessWidget {

  final shoppingController = Get.put(ShoppingController());
  final cartController = Get.put(CartController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Shopping Page"),
        actions: [
          IconButton(
            onPressed: (){
              Get.changeTheme(Get.isDarkMode 
                ? ThemeData.light() 
                : ThemeData.dark());
              Get.snackbar("Change Mode", 
              Get.isDarkMode 
              ? "Light Theme"
              : "Dark Theme");
            }, 
            icon: Icon(Icons.brightness_6)),
        ],
      ),
      body: SafeArea(
        child: Column(
        children: [
          Expanded(
            child: GetX<ShoppingController>(
            builder: (controller) {
              return ListView.builder(
                  itemCount: controller.productsList.length,
                  itemBuilder: (context, index) {
                    return Card(
                        margin: const EdgeInsets.fromLTRB(8, 10, 8, 5),
                        child: Padding(
                            padding: const EdgeInsets.all(15),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          'productname'.tr + " " + controller.productsList[index].name,
                                          style: TextStyle(fontSize: 22),
                                        ),
                                        Text('desc1'.tr + " " + controller.productsList[index].name + " " + 'desc2'.tr)
                                      ],
                                    ),
                                    RichText(
                                        text: TextSpan(
                                            style:
                                                TextStyle(color: Colors.black),
                                            children: <TextSpan>[
                                          TextSpan(
                                            text: "RM  ",
                                          ),
                                          TextSpan(
                                              text: controller
                                                  .productsList[index].price
                                                  .toString(),
                                              style: TextStyle(fontSize: 24)),
                                        ])),
                                  ],
                                ),
                                MaterialButton(
                                  minWidth: 70,
                                  color: Colors.blue,
                                  textColor: Colors.white,
                                  onPressed: () {
                                    cartController
                                        .addToCart(controller.productsList[index]);
                                  },
                                  child: Text("Add to cart"),
                                )
                              ],
                            ))
                    );
                  });
            },
          )),
          GetX<CartController>(
            builder: (controller) {
              return Text(
                "Total Amount: RM ${controller.totalPrice.toString()}",
                style: TextStyle(fontSize: 30, color: Colors.black),
              );
            },
          ),
          SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              MaterialButton(
                height: 30,
                color: Colors.blue,
                child: Text("华语",
                  style:TextStyle(color: Colors.white)),
                onPressed:(){
                  var locale = Locale('zh', 'Hans');
                  Get.updateLocale(locale);
                },
              ),
              SizedBox(width: 10),
              MaterialButton(
                height: 30,
                color: Colors.blue,
                child: Text("Eng",
                  style:TextStyle(color: Colors.white)),
                onPressed:(){
                  var locale = Locale('en', 'US');
                  Get.updateLocale(locale);
                })
            ],
          )
        ],
      )),
      floatingActionButton: FloatingActionButton.extended(
          onPressed: () {},
          icon: Icon(Icons.shopping_cart),
          label: GetX<CartController>(
            builder: (controller) {
              return Text(
                controller.count.toString(),
                style: TextStyle(fontSize: 18),
              );
            },
          )),
    );
  }
}
