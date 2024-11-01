import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:multi/core/app_asset.dart';
import 'package:multi/core/app_color.dart';
import 'package:multi/features/products/presentation/cubit/list_item_form_cubit.dart';
import 'package:multi/features/products/presentation/screens/navigation_list.dart';
import 'package:badges/badges.dart' as badges;

class ListScreen extends StatelessWidget {
  const ListScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final listCubit = context.watch<ListItemFormCubit>();
    final communalBankCubit = context.watch<ListItemFormCubit>().state.items;
    
    return Scaffold(
        appBar: AppBar(
          actions: listCubit.state.stateValue != -1
              ? [
                  IconButton(
                    onPressed: () {
                      listCubit.changeState(1);
                    },
                    icon: badges.Badge(
                      badgeContent: Text('${communalBankCubit.length}'),
                      child: Image.asset(
                        AppAsset.icoCarrito,
                        width: 31,
                        height: 31,
                      ),
                    ),
                  ),
                  IconButton(
                    onPressed: () {
                      context.pushNamed('ajustes');
                    },
                    icon: Image.asset(
                      AppAsset.icoAjuste,
                      width: 31,
                      height: 31,
                    ),
                  ),
                ]
              : null,
          backgroundColor: LightThemeColor.primaryLight,
          title: const Text('Lista Productos'),
        ),
        body: const NavigationList());
  }
}
