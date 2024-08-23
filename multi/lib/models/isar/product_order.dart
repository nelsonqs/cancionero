import 'package:isar/isar.dart';
part 'product_order.g.dart';

@embedded
class ProductOrder {
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
  late int quantity;

  late bool inWishList; // reactive  // cambiaria valor por default false
  late int quantitySale; // cambiaria  valor por default 0
  late double subTotal; // cambiaria  valor por default 0
  late double subTotalWeight; // cambiaria  valor por default 0
  late double weight; // cambiaria  valor por default 0
}
