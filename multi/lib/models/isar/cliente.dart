import 'package:isar/isar.dart';
part 'cliente.g.dart';

@Collection()
class Cliente {
  Id id = Isar.autoIncrement;
  late String codigo;
  late String nombreCliente;
  late String nitCliente;
  late String nombreFactura;
  late String nombreContacto;
  late String direccion;
  late String celular;
}