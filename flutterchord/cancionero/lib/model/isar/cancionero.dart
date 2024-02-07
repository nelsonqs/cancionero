import 'package:isar/isar.dart';
part 'cancionero.g.dart';

@Collection()
class Cancionero {
  Id id = Isar.autoIncrement;
  late String item;
  late String name;

  
}
