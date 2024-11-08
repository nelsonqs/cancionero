import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:isar/isar.dart';
import 'package:multi/common/isar_manager.dart';
import 'package:multi/models/isar/product.dart';
import 'package:multi/models/isar/product_order.dart';
import 'package:multi/models/item.dart';
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
      saveListItem(listItem);
    }
  }

  void saveListItem(List<Item> listItem) {
    emit(state.copyWith(items: listItem));
  }

  /*void addQuantityWithValue(int id, int value) async {
    List<Item> listItem = List.from(state.items);
    final int index = listItem.indexWhere((item) => item.id == id);
    
    final int quantitySale = listItem[index].quantitySale;

    if ((quantitySale + value) >= (listItem[index].quantity)) {
      listItem[index].quantitySale = listItem[index].quantity;
    } else {
      listItem[index].quantitySale = listItem[index].quantitySale + value;
    }
    saveListItem(listItem);
  }*/

  void addQuantityWithValue(int id, int value) async {
    List<Item> listItem = List.from(state.items);
    final int index = listItem.indexWhere((item) => item.id == id);

    if (index != -1) {
      final Item currentItem = listItem[index];
      final int newQuantitySale =
          (currentItem.quantitySale + value) >= currentItem.quantity
              ? currentItem.quantity
              : currentItem.quantitySale + value;

      // Crear una nueva instancia del item con la cantidad actualizada
      final updatedItem = currentItem.copyWith(
        inWishList: true,
        quantitySale: newQuantitySale,
      );

      // Reemplazar el item en la lista
      listItem[index] = updatedItem;

      // Emitir el nuevo estado
      saveListItem(listItem);
    }
  }

  void removeProductToWhiteList(int id) async {
    List<Item> listItem = List.from(state.items);
    final int index = listItem.indexWhere((item) => item.id == id);
    final Item currentItem = listItem[index];
    final updatedItem = currentItem.copyWith(
      inWishList: false,
      quantitySale: 0,
    );
    listItem[index] = updatedItem;
    saveListItem(listItem);
  }

  double get totalWithoutDiscount {
    List<Item> listItem = List.from(state.items);
    if (listItem.isNotEmpty) {
      return listItem
          .map<double>((p) => p.price * p.quantitySale)
          .reduce((a, b) => a + b);
    } else {
      return 0;
    }
  }

  String totalWithDiscount(int discount) {
    double result = 0;
    if (discount > 0) {
      result = totalWithoutDiscount - ((totalWithoutDiscount * discount) / 100);
    } else {
      result = totalWithoutDiscount;
    }
    return result.toStringAsFixed(2);
  }

  void updateDefaultvalue() {
    List<Item> list = List.from(state.items);
    for (var element in list) {
      element.inWishList = false;
      element.quantitySale = 0;
    }
    saveListItem(list);
  }

  void removeQuantityByMovements(int id, int value) async {
    List<Item> items = List.from(state.items);
    final int index = items.indexWhere((item) => item.id == id);
    if ((items[index].quantity - value) <= 0) {
      items[index].quantity = 0;
    } else {
      items[index].quantity = items[index].quantity - value;
    }
    saveListItem(items);
  }

  double totalWeightReport(List<ProductOrder> productOrderList) {
    if (productOrderList.isNotEmpty) {
      return productOrderList
          .map<double>((p) => p.subTotalWeight)
          .reduce((a, b) => a + b);
    } else {
      return 0;
    }
  }
}
