 import 'package:cancionero/core/app_asset.dart';
import 'package:cancionero/features/botton_navigation/data/model/bottom_navigation_item.dart';
import 'package:flutter/material.dart';

class AppData {
  const AppData._();

  static List<BottomNavigationItem> bottomNavigationItems = [
    BottomNavigationItem(
      Image.asset(AppAsset.icoMenu, height: 36, width: 36),
      Image.asset(AppAsset.icoMenuFilled, height: 36, width: 36),
      'Inicio',
      isSelected: true,
    ),
    BottomNavigationItem(
      Image.asset(AppAsset.icoPerfil, height: 36, width: 36),
      Image.asset(AppAsset.icoPerfilFilled, height: 36, width: 36),
      'Configuracion',
    ),
    BottomNavigationItem(
      Image.asset(AppAsset.icoPerfil, height: 36, width: 36),
      Image.asset(AppAsset.icoPerfilFilled, height: 36, width: 36),
      'Otro1',
    ),
    BottomNavigationItem(
      Image.asset(AppAsset.icoPerfil, height: 36, width: 36),
      Image.asset(AppAsset.icoPerfilFilled, height: 36, width: 36),
      'Reportes',
    )
  ];
}
