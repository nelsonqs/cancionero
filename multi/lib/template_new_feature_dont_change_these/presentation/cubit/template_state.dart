part of 'template_form_cubit.dart';

enum TemplateFormStatus { initial, loading, loaded, error, message, empty }

class TemplateFormState extends Equatable {
  final String template;
  const TemplateFormState({
    this.template = '',
  });
  copyWith({
    String? template,
  }) =>
      TemplateFormState(
        template: template ?? this.template,
      );

  @override
  List<Object?> get props => [template];
}
