import 'package:cancionero/core/app_data.dart';
import 'package:cancionero/features/cancionero/screens/cancionero_list_screen.dart';
import 'package:cancionero/features/cancionero/screens/cancionero_screen.dart';
import 'package:cancionero/features/configuracion/configuracion_screen.dart';
import 'package:cancionero/features/menu/page_transition.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';


class HomeScreen extends HookWidget {
  HomeScreen({Key? key}) : super(key: key);

  final List<Widget> screen = [
    CancioneroListScreen(),
    const ConfiguracionScreen(),
    CancioneroListScreen(),
    const ConfiguracionScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    final selectedIndex = useState(0);

    return Scaffold(
      body: PageTransition(
        child: screen[selectedIndex.value],
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: selectedIndex.value,
        onTap: (int index) => selectedIndex.value = index,
        selectedFontSize: 0,
        items: AppData.bottomNavigationItems.map(
          (element) {
            return BottomNavigationBarItem(
              icon: element.disableIcon,
              label: element.label,
              activeIcon: element.enableIcon,
              
            );
          },
        ).toList(),
      ),
    );
  }
}
