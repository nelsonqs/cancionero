import 'package:isar/isar.dart';
part 'product.g.dart';

@Collection()
class Product {
  Id id = Isar.autoIncrement;
  late String item;
  late String name;
  late String imagePath;
  late String brand;
  late String category;
  late String subCategory;
  late String presentation;
  late String unitMeasurement;
  late double price; // reeactive
  late double sugestedPrice;
  late double priceWithInvoice;
  late int quantity;
  late double weight;
  late int quantityUvCaja;
  late double weightUnit;
  late int orderi;
  
}