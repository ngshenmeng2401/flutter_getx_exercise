import 'package:flutter_getx_exercise1/model/product.dart';
import 'package:get/get.dart';

class ShoppingController extends GetxController{

  var productsList = <Product>[].obs;

  @override
  void onInit() {
    super.onInit();
    fetchProducts();
  }

  void fetchProducts() async{

  await Future.delayed(Duration(seconds: 1));

    var productResult =[

      Product(
        id: 1, 
        name: "1", 
        img: "image", 
        description: "This is product 1 description", 
        price: 30),

      Product(
        id: 2, 
        name: "2", 
        img: "image", 
        description: "This is product 2 description", 
        price: 45),

      Product(
        id: 3, 
        name: "3", 
        img: "image", 
        description: "This is product 3 description", 
        price: 50),

      Product(
        id: 4, 
        name: "4", 
        img: "image", 
        description: "This is product 4 description", 
        price: 25),

    ];

    productsList.value = productResult;
  }
}