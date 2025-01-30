part of 'cliente_form_cubit.dart';

enum ClienteFormStatus { initial, loading, loaded, error, message, empty }

class ClienteFormState extends Equatable {
  final List<Cliente> clienteLst;

  const ClienteFormState({
    this.clienteLst = const [],
    
  });
  copyWith({
    List<Cliente>? clienteLst,
  }) =>
      ClienteFormState(
        clienteLst: clienteLst ?? this.clienteLst,
      );

  @override
  List<Object?> get props => [clienteLst];
}
