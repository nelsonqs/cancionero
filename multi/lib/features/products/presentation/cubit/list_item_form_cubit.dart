import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:isar/isar.dart';
import 'package:multi/common/isar_manager.dart';
import 'package:multi/models/isar/product.dart';
import 'package:multi/models/isar/product_order.dart';
import 'package:multi/models/isar/product_range_price.dart';
import 'package:multi/models/item.dart';
part 'list_item_state.dart';

class ListItemFormCubit extends Cubit<ListItemFormState> {
  ListItemFormCubit() : super(const ListItemFormState());

  IsarManager isarManager = IsarManager();

  Future getProducts() async {
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

  void removeProductToWhiteList(int id) async {
    List<Item> listItem = List.from(state.items);
    final int index = listItem.indexWhere((item) => item.id == id);
    final Item currentItem = listItem[index];
    double precioActualizado =
        await obtainPriceCalculated(currentItem, 0, listItem);

    final updatedItem = currentItem.copyWith(
        inWishList: false, quantitySale: 0, price: precioActualizado);
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

  void removeQuantity(int id) async {
    List<Item> listItem = List.from(state.items);
    final int index = listItem.indexWhere((item) => item.id == id);

    if (index != -1) {
      final Item currentItem = listItem[index];
      final int newQuantitySale = (currentItem.quantitySale - 1) <= 1
          ? 0
          : currentItem.quantitySale - 1;

      double precioActualizado =
          await obtainPriceCalculated(currentItem, newQuantitySale, listItem);

      // Crear una nueva instancia del item con la cantidad actualizada
      final updatedItem = currentItem.copyWith(
          inWishList: newQuantitySale == 0 ? false : currentItem.inWishList,
          quantitySale: newQuantitySale,
          price: precioActualizado);

      // Reemplazar el item en la lista
      listItem[index] = updatedItem;

      // Emitir el nuevo estado
      emit(state.copyWith(items: listItem));
    }
  }

  void addQuantityWithValue(int id, int value) async {
    List<Item> listItem = List.from(state.items);
    final int index = listItem.indexWhere((item) => item.id == id);

    if (index != -1) {
      final Item currentItem = listItem[index];
      final int newQuantitySale =
          (currentItem.quantitySale + value) >= currentItem.quantity
              ? currentItem.quantity
              : currentItem.quantitySale + value;

      double precioActualizado =
          await obtainPriceCalculated(currentItem, newQuantitySale, listItem);
      // Crear una nueva instancia del item con la cantidad actualizada
      final updatedItem = currentItem.copyWith(
        inWishList: true,
        quantitySale: newQuantitySale,
        price: precioActualizado,
      );

      // Reemplazar el item en la lista
      listItem[index] = updatedItem;

      // Emitir el nuevo estado
      saveListItem(listItem);
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

      double precioActualizado =
          await obtainPriceCalculated(currentItem, newQuantitySale, listItem);

      final updatedItem = currentItem.copyWith(
        inWishList: true,
        quantitySale: newQuantitySale,
        price: precioActualizado,
      );

      listItem[index] = updatedItem;

      saveListItem(listItem);
    }
  }

  Future<double> obtainPriceCalculated(
      Item currentItem, int newQuantitySale, List<Item> listItem) async {
    Isar isar = isarManager.isar;
    double precioActualizado = 0;
    ProductRangePrice? productRangePrice = await isar.productRangePrices
        .filter()
        .itemIdEqualTo(currentItem.id)
        .findFirst();

    if (productRangePrice != null) {
      final productRangePrices = await isar.productRangePrices
          .filter()
          .groupEqualTo(productRangePrice.group)
          .findAll();

      if (productRangePrices.isNotEmpty && listItem.isNotEmpty) {
        int quantityGroup = calculateSumQuantity(listItem, productRangePrices) +
            newQuantitySale;
        precioActualizado = calculatePrice(quantityGroup, productRangePrices);
        saveChanges(listItem, productRangePrices, precioActualizado);
      }
    }
    return precioActualizado;
  }

  int calculateSumQuantity(
      List<Item> listItem, List<ProductRangePrice> productRangePrices) {
    return productRangePrices.fold(0, (total, product) {
      return total +
          listItem
              .where((item) => item.id == product.id)
              .fold(0, (subtotal, item) => subtotal + item.quantitySale);
    });
  }

  double calculatePrice(
      int quantityGroup, List<ProductRangePrice> productRangePrices) {
    for (var productRangePrice in productRangePrices) {
      if (quantityGroup >= productRangePrice.rangeA &&
          quantityGroup <= productRangePrice.rangeB) {
        return productRangePrice.unitPrice;
      }
    }
    return productRangePrices.isNotEmpty ? productRangePrices.first.price : 0.0;
  }

  void saveChanges(List<Item> listItem,
      List<ProductRangePrice> productRangePrices, double priceUpdated) {
    List<Item> updatedList = listItem.map((item) {
      final product =
          productRangePrices.firstWhere((product) => product.itemId == item.id,
              orElse: () => ProductRangePrice()
                ..boxPrice = 0.0
                ..unitPrice = 0.0
                ..price = 0.0
                ..discount = 0.0
                ..rangeA = 0
                ..rangeB = 0
                ..group = 0
                ..itemId = 0
                ..id = 0);
      if (product.price > 0) {
        return item.copyWith(price: priceUpdated);
      }
      return item;
    }).toList();

    saveListItem(updatedList);
  }
}
