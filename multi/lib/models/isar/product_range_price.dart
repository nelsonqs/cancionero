import 'package:isar/isar.dart';
part 'product_range_price.g.dart';

@Collection()
class ProductRangePrice {
  Id id = Isar.autoIncrement;
  int? itemId;
  late int group;
  late double price;
  late int rangeA;
  late int rangeB;
  late double discount;
  late double boxPrice;
  late double unitPrice;
  
}