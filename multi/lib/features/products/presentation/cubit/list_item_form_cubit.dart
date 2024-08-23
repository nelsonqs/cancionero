import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:isar/isar.dart';
import 'package:multi/common/isar_manager.dart';
import 'package:multi/models/isar/product.dart';
import 'package:multi/models/item.dart';
import 'package:supabase_flutter/supabase_flutter.dart';
part 'list_item_state.dart';

class ListItemFormCubit extends Cubit<ListItemFormState> {
  ListItemFormCubit() : super(const ListItemFormState());

  Future getProducts() async {
    IsarManager isarManager = IsarManager();
    Isar isar = isarManager.isar;
    List<Item> items = List.from(state.items);
    try {
      if (items.isEmpty) {
        List<Product> product = await isar.products
            .filter()
            .not()
            //.categoryEqualTo('a granel')
            .orderiEqualTo(777)
            .sortByOrderi()
            .findAll();

        for (var element in product) {
          Item data = Item(
              id: int.parse(element.item),
              name: element.name,
              price: element.price,
              inWishList: false,
              quantity: element.quantity,
              imagePath: element.imagePath,
              brand: element.brand,
              category: element.category,
              subCategory: element.subCategory,
              presentation: element.presentation,
              unitMeasurement: element.unitMeasurement,
              quantitySale: 0,
              weight: element.weight,
              sugestedPrice: element.sugestedPrice,
              typeProduct: 'normal',
              quantityUvCaja: element.quantityUvCaja,
              weightUnit: element.weightUnit,
              orderi: element.orderi);

          items.add(data);
        }
        
      }
      emit(state.copyWith(items: items));
    } catch (e) {
      debugPrint('Error: $e');
    }
  }

  void changeState(int i) {
    emit(state.copyWith(stateValue: i));
  }

  void removeQuantity(int id) async {
    List<Item> listItem = List.from(state.items);
    final int index = listItem.indexWhere((item) => item.id == id);

    if (index != -1) {
      final Item currentItem = listItem[index];
      final int newQuantitySale = (currentItem.quantitySale - 1) <= 1
          ? 0
          : currentItem.quantitySale - 1;

      // Crear una nueva instancia del item con la cantidad actualizada
      final updatedItem = currentItem.copyWith(
        inWishList: newQuantitySale == 0 ? false : currentItem.inWishList,
        quantitySale: newQuantitySale,
      );

      // Reemplazar el item en la lista
      listItem[index] = updatedItem;

      // Emitir el nuevo estado
      emit(state.copyWith(items: listItem));
    }
  }

  void addQuantity(int id) async {
    List<Item> listItem = List.from(state.items);
    final int index = listItem.indexWhere((item) => item.id == id);

    if (index != -1) {
      final Item currentItem = listItem[index];
      final int newQuantitySale =
          (currentItem.quantitySale + 1) >= currentItem.quantity
              ? currentItem.quantity
              : currentItem.quantitySale + 1;

      // Crear una nueva instancia del item con la cantidad actualizada
      final updatedItem = currentItem.copyWith(
        inWishList: true,
        quantitySale: newQuantitySale,
      );

      // Reemplazar el item en la lista
      listItem[index] = updatedItem;

      // Emitir el nuevo estado
      emit(state.copyWith(items: listItem));
    }
  }
}
