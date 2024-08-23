import 'package:formz/formz.dart';

// Define tipos de errores
enum NameInputError { empty}

class NameInput extends FormzInput<String, NameInputError> {
  // super.pure representa una entrada limpia sin modificar
  const NameInput.pure() : super.pure('');

  // super.dirty  representa una entrada modificada.
  const NameInput.dirty({String value = ''}) : super.dirty(value);

  // Las validaciones van aqui
  @override
  NameInputError? validator(String value) {
    return value.isEmpty ? NameInputError.empty : null;
  }
}