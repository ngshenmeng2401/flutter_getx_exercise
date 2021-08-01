import 'package:flutter_getx_exercise1/view/menu.dart';
import 'package:flutter_getx_exercise1/view/online_shopping_page.dart';
import 'package:flutter_getx_exercise1/view/shopping_page.dart';
import 'package:flutter_getx_exercise1/view/unknown_page.dart';
import 'package:get/get.dart';

class AppPages{

  static final Initial = GetPage(
      name: "/menu", 
      page: ()=> MenuPage());

  static final List<GetPage> routes = [

    GetPage(
      name: "/menu", 
      page: () => MenuPage()),
    GetPage(
      name: "/shopping", 
      page:() => ShoppingPage()),
    GetPage(
      name: "/onlineshopping", 
      page: () => OnlineShoppingPage()),
  ];

  static final Unknown = GetPage(
      name: "/notfound", 
      page: ()=> UnknownRoutePage());
}