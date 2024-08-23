import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:multi/features/products/presentation/screens/navigator_screen.dart';
import 'package:multi/features/products/presentation/screens/page_transition.dart';


//Para usar este comun minimamente se debe pasar los elementos en la lista
class CustomNavigator extends HookWidget {
  final List<NavigatorScreen> listNavigator;
  const CustomNavigator({super.key, required this.listNavigator});
  @override
  Widget build(BuildContext context) {
    final selectedIndex = useState(0);
    return Scaffold(
      body: PageTransition(
        child: listNavigator[selectedIndex.value].screen,
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: selectedIndex.value,
        onTap: (int index) {
          selectedIndex.value = index;
          listNavigator[index].onTap();
        },
        selectedFontSize: 0,
        items: listNavigator.map(
          (element) {
            return BottomNavigationBarItem(
              icon: element.bottomNavigationItem.disableIcon,
              label: element.bottomNavigationItem.label,
              activeIcon: element.bottomNavigationItem.enableIcon,
            );
          },
        ).toList(),
      ),
    );
  }
}
