import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:supabase_flutter/supabase_flutter.dart';
part 'cliente_state.dart';

class ClienteFormCubit extends Cubit<ClienteFormState> {
  ClienteFormCubit() : super(const ClienteFormState());

  void chanheTemplate(String value) {
    emit(state.copyWith(template: value));
  }
}
