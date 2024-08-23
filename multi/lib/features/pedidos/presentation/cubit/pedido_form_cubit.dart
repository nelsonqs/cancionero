import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:supabase_flutter/supabase_flutter.dart';
part 'pedido_state.dart';

class PedidoFormCubit extends Cubit<PedidoFormState> {
  PedidoFormCubit() : super(const PedidoFormState());

  void chanheTemplate(String value) {
    emit(state.copyWith(template: value));
  }
}
