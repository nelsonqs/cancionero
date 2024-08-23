part of 'login_cubit.dart';

enum FormStatusLogin { invalid, valid, vilidating, posting, message, exception }

class LoginFormState extends Equatable {
  final FormStatusLogin formStatus;
  final String message;
  final String typeMessage;
  final bool isValid;
  final bool visibililty;
  final bool remember;
  final bool status;
  final bool offline;
  final Username username;
  final Password password;

  const LoginFormState(
      {this.formStatus = FormStatusLogin.invalid,
      this.message = "",
      this.typeMessage = "",
      this.isValid = false,
      this.visibililty = false,
      this.remember = false,
      this.status = false,
      this.offline = false,
      this.username = const Username.dirty("invitado"),
      this.password = const Password.dirty("12345678"),
      });

  LoginFormState copyWith({
    FormStatusLogin? formStatus,
    String? message,
    String? typeMessage,
    bool? isValid,
    bool? visibililty,
    bool? remember,
    bool? status,
    bool? offline,
    Username? username,
    Password? password,
  }) =>
      LoginFormState(
        formStatus: formStatus ?? this.formStatus,
        message: message ?? this.message,
        typeMessage: typeMessage ?? this.typeMessage,
        isValid: isValid ?? this.isValid,
        visibililty: visibililty ?? this.visibililty,
        status: status ?? this.status,
        offline: offline ?? this.offline,
        remember: remember ?? this.remember,
        username: username ?? this.username,
        password: password ?? this.password,
      );

  @override
  List<Object> get props => [
        formStatus,
        message,
        typeMessage,
        isValid,
        visibililty,
        offline,
        username,
        password,
        remember,
        status
      ];
}
