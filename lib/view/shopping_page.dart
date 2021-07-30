import 'package:flutter/material.dart';
import 'package:flutter_getx_exercise1/controller/cartController.dart';
import 'package:flutter_getx_exercise1/controller/shopping.controller.dart';
import 'package:get/get.dart';

class ShoppingPage extends StatelessWidget {
  final shoppingController = Get.put(ShoppingController());
  final cartController = Get.put(CartController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Shopping Page"),
      ),
      body: SafeArea(
          child: Column(
        children: [
          Expanded(child: GetX<ShoppingController>(
            builder: (controller) {
              return ListView.builder(
                  itemCount: controller.products.length,
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
                                          controller.products[index].name,
                                          style: TextStyle(fontSize: 22),
                                        ),
                                        Text(controller
                                            .products[index].description)
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
                                                  .products[index].price
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
                                        .addToCart(controller.products[index]);
                                  },
                                  child: Text("Add to cart"),
                                )
                              ],
                            )));
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
          SizedBox(height: 60),
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
