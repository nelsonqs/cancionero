import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:isar/isar.dart';
import 'package:multi/common/isar_manager.dart';
import 'package:multi/common/respouse_future.dart';
import 'package:multi/models/isar/cliente.dart';
part 'cliente_state.dart';

class ClienteFormCubit extends Cubit<ClienteFormState> {
  ClienteFormCubit() : super(const ClienteFormState());

  IsarManager isarManager = IsarManager();
  
  
  Future getClientes() async {
    Isar isar = isarManager.isar;
    List<Cliente> items = List.from(state.clienteLst);
    try {
      if (items.isEmpty) {
        items = await isar.clientes.filter().nombreClienteIsNotEmpty().findAll();
      }
      emit(state.copyWith(clienteLst: items));
    } catch (e) {
      debugPrint('Error: $e');
    }
  }
}
