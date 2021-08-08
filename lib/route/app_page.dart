import 'package:flutter_getx_exercise1/bindings/image_picker_binding.dart';
import 'package:flutter_getx_exercise1/bindings/menu_binding.dart';
import 'package:flutter_getx_exercise1/bindings/validate_login_binding.dart';
import 'package:flutter_getx_exercise1/middleware/home_auth.dart';
import 'package:flutter_getx_exercise1/middleware/login_auth.dart';
import 'package:flutter_getx_exercise1/view/image_picker_page.dart';
import 'package:flutter_getx_exercise1/view/login_screen.dart';
import 'package:flutter_getx_exercise1/view/menu.dart';
import 'package:flutter_getx_exercise1/view/online_shopping_page.dart';
import 'package:flutter_getx_exercise1/view/shopping_page.dart';
import 'package:flutter_getx_exercise1/view/test_page.dart';
import 'package:flutter_getx_exercise1/view/unknown_page.dart';
import 'package:get/get.dart';

class AppPages{

  static final Initial = GetPage(
      name: "/menu", 
      page: ()=> MenuPage());

  static final List<GetPage> routes = [

    GetPage(
      name: "/login", 
      page: () => LoginScreen(),
      binding: ValidateLoginBinding()),

    GetPage(
      name: "/menu", 
      page: () => MenuPage(),
      // binding: MenuBinding(),
      ),

    GetPage(
      name: "/shopping", 
      page:() => ShoppingPage()),

    GetPage(
      name: "/test", 
      page:() => TestPage()),

    GetPage(
      name: "/onlineshopping", 
      page: () => OnlineShoppingPage(),
      // binding: OnlineShoppingBinding,
      middlewares: [
        LoginAuthMiddleware(),
        // HomePageAuth(),
      ]
    ),
    GetPage(
      name: "/imagepicker", 
      page:() => ImagePickerPage(),
      binding: ImagePickerBinding()),
  ];

  static final Unknown = GetPage(
      name: "/notfound", 
      page: ()=> UnknownRoutePage());
}