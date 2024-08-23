part of 'carrito_cubit.dart';

enum CarritoFormStatus { initial, loading, loaded, error, message, empty }

class CarritoState extends Equatable {
  final List<Item> listItem;

  const CarritoState({
    this.listItem = const [],
  });
  copyWith({
    List<Item>? listItem,
  }) =>
      CarritoState(
        listItem: listItem ?? this.listItem,
      );

  @override
  List<Object?> get props => [listItem];
}
