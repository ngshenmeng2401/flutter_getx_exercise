import 'package:flutter_getx_exercise1/model/online_product.dart';
import 'package:flutter_getx_exercise1/model/product.dart';
import 'package:get/state_manager.dart';

class CartController extends GetxController{

  var cartItems = <Product>[].obs;
  var onlineCartItems = <OnlineProduct>[].obs;

  int get count => cartItems.length + onlineCartItems.length;
  double get totalPrice => cartItems.fold(0, (sum, item) => sum + item.price);

  addToCart(Product product){

    cartItems.add(product);
  }

  addToOnlineCart(OnlineProduct onlineProduct){

    onlineCartItems.add(onlineProduct);
  }
}