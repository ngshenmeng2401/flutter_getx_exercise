import 'package:get/state_manager.dart';
import 'package:get/get.dart';

class Product{

  final int id;
  final String name;
  final String img;
  final String description;
  final double price;

  Product(
    {
      required this.id,
      required this.name,
      required this.img,
      required this.description,
      required this.price,
    }
  );
}