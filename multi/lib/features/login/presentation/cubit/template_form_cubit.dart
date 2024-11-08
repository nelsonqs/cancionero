import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:supabase_flutter/supabase_flutter.dart';
part 'template_state.dart';

class TemplateFormCubit extends Cubit<TemplateFormState> {
  final SupabaseClient supabaseClient;

  TemplateFormCubit(this.supabaseClient) : super(const TemplateFormState());

  void chanheTemplate(String value) {
    emit(state.copyWith(template: value));
  }
}
