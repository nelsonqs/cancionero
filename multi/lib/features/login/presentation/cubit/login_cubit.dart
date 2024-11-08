import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:formz/formz.dart';
import 'package:multi/common/constant.dart';
import 'package:multi/common/response_data.dart';
import 'package:multi/core/app_constant_messages.dart';
import 'package:multi/features/login/infrastructure/inputs/password.dart';
import 'package:multi/features/login/infrastructure/inputs/username.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

part 'login_state.dart';

class LoginCubit extends Cubit<LoginFormState> {
  LoginCubit() : super(const LoginFormState());

  Future<ResponseData> onSubmit(BuildContext context) async {
    try {
      if (!state.isValid) {
        emit(state.copyWith(
          formStatus: FormStatusLogin.message,
          isValid: false,
          message: AppConstantMessage.errorLogin,
          username: Username.dirty(state.username.value),
          password: Password.dirty(state.password.value),
        ));
        return ResponseData(false, AppConstantMessage.errorLogin);
      } else {
        emit(state.copyWith(
            formStatus: FormStatusLogin.vilidating,
            status: true,
            username: Username.dirty(state.username.value),
            password: Password.dirty(state.password.value),
            isValid: Formz.validate([state.username, state.password])));
        String userWithEmail = "${state.username.value}@multi.org";
        final response = await supabase.auth.signInWithPassword(
            email: userWithEmail, password: state.password.value.trim());
        final Session? session = response.session;
        // BlocProvider.of<SessionCubit>(context).chargeDefaultLatLong(response1['cod_agencia']);
        // loadCities(context, response1['departamento']);
        if (session != null) {
          emit(state.copyWith(
              formStatus: FormStatusLogin.valid,
              status: false,
              username: Username.dirty(state.username.value),
              password: Password.dirty(state.password.value)));
              return ResponseData(true, '');
        } else {
          emit(state.copyWith(
            status: false,
          ));
          return ResponseData(false, 'No se pudo iniciar sesion');
        }
      }
    } on AuthException {
      emit(state.copyWith(
          username: Username.dirty(state.username.value),
          status: false,
          password: Password.dirty(state.password.value)));
      final username = state.username.value.toString();
      final password = state.password.value.toString();

      emit(state.copyWith(
          formStatus: FormStatusLogin.message,
          status: false,
          message:
              'Error en la autenticacion:\n Usuario: $username \n Contraseña: $password'));
      return ResponseData(
          false,
          'Error en la autenticacion:\n Usuario: $username \n Contraseña: $password',
          );
    } catch (error) {
      emit(state.copyWith(
          username: Username.dirty(state.username.value),
          password: Password.dirty(state.password.value),
          status: false,
          message: error.toString()));

      return ResponseData(
          false,
          error.toString(),
          );
    }
  }
  void usernameChanged(String value) {
    final username = Username.dirty(value);
    emit(state.copyWith(
        username: username,
        formStatus: FormStatusLogin.vilidating,
        // cuando el username puede determinar si el formulario es valido basado en
        isValid: Formz.validate([username, state.password])));
  }

  void passwordChanged(String value) {
    final password = Password.dirty(value);
    emit(state.copyWith(
        password: password,
        formStatus: FormStatusLogin.vilidating,
        // debo enviar cada uno de los campos para verificar si es valido o o el formulario
        isValid: Formz.validate([password, state.username])));
  }

   void changeVisibility() {
    bool value = !state.visibililty;
    emit(state.copyWith(visibililty: value));
  }

  void changeRemember(bool? value) {
    bool data = value!;
    emit(state.copyWith(remember: data));
  }

  void initialize() {
    emit(const LoginFormState());
  }
}
