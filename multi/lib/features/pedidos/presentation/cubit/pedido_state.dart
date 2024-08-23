part of 'pedido_form_cubit.dart';

enum PedidoFormStatus { initial, loading, loaded, error, message, empty }

class PedidoFormState extends Equatable {
  final String template;
  const PedidoFormState({
    this.template = '',
  });
  copyWith({
    String? template,
  }) =>
      PedidoFormState(
        template: template ?? this.template,
      );

  @override
  List<Object?> get props => [template];
}
