part of 'ajustes_form_cubit.dart';

enum AjustesFormStatus { initial, loading, loaded, error, message, empty }

class AjustesFormState extends Equatable {
  final String template;
  const AjustesFormState({
    this.template = '',
  });
  copyWith({
    String? template,
  }) =>
      AjustesFormState(
        template: template ?? this.template,
      );

  @override
  List<Object?> get props => [template];
}
