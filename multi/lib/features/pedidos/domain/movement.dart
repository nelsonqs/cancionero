import 'package:isar/isar.dart';
part 'movement.g.dart';

@Collection()
class Movement {
  Id id = Isar.autoIncrement;
  late DateTime dateMovement;
  late String item;
  late String name;

  late String brand;
  late String category;
  late String subCategory;
  late String presentation;

  late String unitMeasurement;
  late int quantity;
  late int quantitySale; // se puso recien
  late int stock; // se puso recien
  late String imagePath; // se puso recien
  late double price;
  late double subTotal;
  late String typeMovement;
  late String orderId;
  late String invoiceNumber;
  late String invoiceName;
  late String obs;
}
