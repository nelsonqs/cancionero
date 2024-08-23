part of 'list_item_form_cubit.dart';

enum ListItemFormStatus { initial, loading, loaded, error, message, empty }

class ListItemFormState extends Equatable {
  final List<Item> items;
  final int stateValue;

  const ListItemFormState({
    this.items = const [],
    this.stateValue = -1,
  });
  copyWith({
    List<Item>? items,
    int? stateValue,
  }) =>
      ListItemFormState(
        items: items ?? this.items,
        stateValue: stateValue ?? this.stateValue,
      );

  @override
  List<Object?> get props => [items, stateValue];
}
