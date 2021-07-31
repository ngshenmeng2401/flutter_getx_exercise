import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_getx_exercise1/controller/cart_controller.dart';
import 'package:flutter_getx_exercise1/controller/online_shopping_controller.dart';
import 'package:flutter_getx_exercise1/view/online_product_tile.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:get/get.dart';

class OnlineShoppingPage extends StatelessWidget {
  
  final onlineShoppingController = Get.put(OnlineShoppingController());
  final cartController = Get.put(CartController());

  @override
  Widget build(BuildContext context) {

    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      appBar: AppBar(
        title: Text("Online Shopping"),

      ),
      body: Column(
        children: [
          Expanded(
            child: Padding(
              padding:const EdgeInsets.fromLTRB(10, 10, 10, 10),
              child: StaggeredGridView.countBuilder(
                crossAxisCount: 2, 
                itemCount: onlineShoppingController.productList.length,
                crossAxisSpacing: 10,
                mainAxisSpacing: 10,
                itemBuilder: (context,index){
                  return OnlineProductTile(onlineShoppingController.productList[index]);
                }, 
              staggeredTileBuilder: (index)=>StaggeredTile.fit(1)),
            ),

            // child:ListView.builder(
            //   itemCount: 2,
            //   itemBuilder: (context, index){
            //     return OnlineProductTile(onlineShoppingController.productList[index]);
            // })
          ),
        ],
      ),
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