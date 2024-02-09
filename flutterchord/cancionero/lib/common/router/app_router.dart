import 'package:cancionero/features/cancionero/screens/cancionero_edit.dart';
import 'package:cancionero/features/cancionero/screens/cancionero_list_screen.dart';
import 'package:cancionero/features/cancionero/screens/cancionero_screen.dart';
import 'package:cancionero/features/home_screen.dart';
import 'package:go_router/go_router.dart';

final appRouter = GoRouter(routes: [
  GoRoute(
    path: '/',
    builder: (context, state) => CancioneroListScreen(),
  ),
  GoRoute(
    path: '/home',
    builder: (context, state) => HomeScreen(),
  ),
  GoRoute(
    path: '/settings',
    builder: (context, state) => HomeScreen(),
  ),
  GoRoute(
  path: '/detail/:index',
  builder: (context, state) => CancioneroScreen(index: state.pathParameters['index']!),
  ),
  GoRoute(
  path: '/update/:index',
  builder: (context, state) => CancioneroEdit(index: state.pathParameters['index']!),
  ),
]);
