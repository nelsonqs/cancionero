part of 'cliente_form_cubit.dart';

enum ClienteFormStatus { initial, loading, loaded, error, message, empty }

class ClienteFormState extends Equatable {
  final String template;
  const ClienteFormState({
    this.template = '',
  });
  copyWith({
    String? template,
  }) =>
      ClienteFormState(
        template: template ?? this.template,
      );

  @override
  List<Object?> get props => [template];
}
