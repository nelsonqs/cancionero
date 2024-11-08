import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
part 'template_state.dart';

class TemplateFormCubit extends Cubit<TemplateFormState> {
  

  TemplateFormCubit() : super(const TemplateFormState());

  void chanheTemplate(String value) {
    emit(state.copyWith(template: value));
  }
}
