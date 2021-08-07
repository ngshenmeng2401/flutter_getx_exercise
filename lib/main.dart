import 'package:flutter/material.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'lang/translation_service.dart';
import 'middleware/login_auth.dart';
import 'route/app_page.dart';
import 'view/menu.dart';
import 'view/online_shopping_page.dart';
import 'view/shopping_page.dart';
import 'view/unknown_page.dart';
 
void main() => runApp(MyApp());
 
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: "GetX Exercises",
      debugShowCheckedModeBanner: false,
      initialRoute: "/menu",
      unknownRoute: GetPage(name: "/notfound", page: ()=> UnknownRoutePage()),
      getPages: AppPages.routes,
      locale: TranslationService.locale,
      fallbackLocale: TranslationService.fallbackLocale,
      translations: TranslationService(),
      
      // home: MenuPage(),
    );
  }
}