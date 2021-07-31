import 'package:flutter/material.dart';
import 'package:flutter_getx_exercise1/model/online_product.dart';
import 'package:flutter_getx_exercise1/service/remote_service.dart';
import 'package:get/get.dart';

class OnlineShoppingController extends GetxController {

  static OnlineShoppingController get to => Get.find<OnlineShoppingController>();

  var productList = <OnlineProduct>[].obs;
  var isLoading = true.obs;
  var statusMsj = "Loading".obs;
  final selected = "Cake".obs;

  void setSelected(String value) {
    selected.value = value;
  }

  late TextEditingController productNameController;
  late TextEditingController productDescController;
  late TextEditingController priceController;

  List<String> listType = [
    "Cup Cake",
    "Bento Cake",
    "Cake",
    "Puff",
    "Tart",
  ];

  @override
  void onInit() {
    productNameController = new TextEditingController();
    productDescController = new TextEditingController();
    priceController = new TextEditingController();
    fetchProducts();
    super.onInit();
  }

  void fetchProducts() async {
    try {
      isLoading(true);
      var products = await RemoteService.fetchProducts();
      if (products != null) {
        productList.assignAll(products);
      } else {
        // productList = null;
        statusMsj("No data");
      }
    } finally {
      isLoading(false);
    }
  }
}