import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:multi/core/app_asset.dart';
import 'package:multi/features/carrito/presentation/screens/carrito_screen.dart';
import 'package:multi/features/clientes/presentation/screens/clientes_screen.dart';
import 'package:multi/features/pedidos/presentation/screens/pedido_screen.dart';
import 'package:multi/features/products/presentation/cubit/list_item_form_cubit.dart';
import 'package:multi/features/products/presentation/screens/bottom_navigation_item.dart';
import 'package:multi/features/products/presentation/screens/custom_navigation.dart';
import 'package:multi/features/products/presentation/screens/navigator_screen.dart';
import 'package:multi/features/products/presentation/screens/product_list_screen.dart';

class NavigationList extends StatelessWidget {
  const NavigationList({super.key});

  @override
  Widget build(BuildContext context) {
    final listCubit = context.watch<ListItemFormCubit>();
    List<NavigatorScreen> navigationList = [
      NavigatorScreen(
          BottomNavigationItem(
              Image.asset(AppAsset.icoProductoGray, height: 31, width: 31),
              Image.asset(AppAsset.icoProducto, height: 31, width: 31),
              'Lista Productos',
              isSelected: true),
          Container(
            alignment: Alignment.center,
            child: () {
              if (listCubit.state.items.isEmpty) {
                listCubit.getProducts();
              }
              return const ProductListScreen();
            }(),
          ), () {
        listCubit.changeState(1);
      }),
      NavigatorScreen(
          BottomNavigationItem(
            Image.asset(AppAsset.icoCarritoGray, height: 31, width: 31),
            Image.asset(AppAsset.icoCarrito, height: 31, width: 31),
            'Carrito',
          ),
          Container(
            alignment: Alignment.center,
            child: CarritoScreen(),
          ), () {
        listCubit.changeState(-1);
      }),
      NavigatorScreen(
          BottomNavigationItem(
            Image.asset(AppAsset.icoPedidoGray, height: 31, width: 31),
            Image.asset(AppAsset.icoPedido, height: 31, width: 31),
            'Pedidos',
          ),
          Container(
            alignment: Alignment.center,
            child: PedidoScreen(),
          ), () {
        listCubit.changeState(-1);
      }),
      NavigatorScreen(
          BottomNavigationItem(
            Image.asset(AppAsset.icoClienteGray, height: 31, width: 31),
            Image.asset(AppAsset.icoCliente, height: 31, width: 31),
            'Clientes',
          ),
          Container(
            alignment: Alignment.center,
            child: ClienteScreen(),
          ), () {
        listCubit.changeState(-1);
      }),
    ];
    return CustomNavigator(listNavigator: navigationList);
  }
}
