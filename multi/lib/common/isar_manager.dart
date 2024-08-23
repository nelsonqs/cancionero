import 'package:isar/isar.dart';
import 'package:multi/models/isar/person.dart';
import 'package:multi/models/isar/product_range_price.dart';
import 'package:multi/models/isar/category.dart';
import 'package:multi/models/isar/movement.dart';
import 'package:multi/models/isar/order.dart';
import 'package:multi/models/isar/product.dart';

class IsarManager {
  static final IsarManager _singleton = IsarManager._internal();
  late Isar isar;

  factory IsarManager() {
    return _singleton;
  }

  IsarManager._internal();

  initIsar(String directory) async {
    isar = await Isar.open([CategorySchema,MovementSchema, OrderSchema, ProductSchema,  ProductRangePriceSchema], directory: directory);
  }
  
}