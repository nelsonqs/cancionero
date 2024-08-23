
import 'package:isar/isar.dart';
import 'package:multi/models/isar/person.dart';
import 'package:multi/models/isar/product_order.dart';
part 'order.g.dart';

@Collection()
class Order {
  Id id = Isar.autoIncrement;
  late DateTime createOn;
  late DateTime dateOnSale;
  late bool isSale;
  late String codeOrder;
  late double totalWeightProducts;
  
  late double totalWithoutDiscount;
  late double totalWithDiscount;
  
  late int discount;
  late String obs;
  Person? client;
  List<ProductOrder>? products;
}
