import 'dart:convert';

import 'package:flutter_getx_exercise1/model/online_product.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;

class RemoteService {

  static var client = http.Client();

  static Future<List<OnlineProduct>?> fetchProducts() async {
    var response =
        await client.get(
          Uri.parse(
            "https://javathree99.com/s271059/getx_exercise/php/load_product.php"));
    if (response.statusCode == 200) {
      if (response.body == "nodata") {
        return null;
      } else {
        var jsonString = response.body;
        print("IN remoteservices" + jsonString);
        return onlineProductFromJson(jsonString);
      }
    } else {
      //show error message
      // return null;
      throw Exception('Failed to load Categories from API');
    }
  }

  static Future<String?> deleteProduct(productno) async {
    var response = await client.post(Uri.parse('https://javathree99.com/s271059/littlecakestory/php/delete_product.php'),
        body: {
          "productno": productno
          });
    if (response.statusCode == 200) {
      var resp = json.decode(response.body);
      return resp;
    } else {
      //show error message
      return null;
    }
  }

  static Future<String?> newProduct(product) async {
    var response = await client
    .post(Uri.parse("https://javathree99.com/s271059/littlecakestory/php/add_product.php"), 
    body: {
      "name":product.name,
      "price":product.price,
      "rating":product.rating,
      "details":product.details,
      "email":product.email,
      "encoded_string":product.base64Image,
      "type":product.type,

    });
    if (response.statusCode == 200) {
      var resp = json.decode(response.body);
      return resp;
    } else {
      //show error message
      return null;
    }
  }
}