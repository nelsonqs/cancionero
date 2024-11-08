// ignore_for_file: use_build_context_synchronously

import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:multi/common/constant.dart';
import 'package:multi/features/ajustes/presentation/screens/ajustes_screen.dart';
import 'package:multi/features/carrito/presentation/screens/carrito_screen.dart';
import 'package:multi/features/clientes/presentation/screens/clientes_screen.dart';
import 'package:multi/features/login/presentation/screens/login_screen.dart';
import 'package:multi/features/pedidos/presentation/screens/pedido_screen.dart';
import 'package:multi/features/products/presentation/screens/list_screen.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

final appRouter = GoRouter(routes: [
  GoRoute(
    path: '/',
    redirect: _redirectToLogin,
    builder: (context, state) => const ListScreen(),
  ),
  GoRoute(
    path: '/login',
    name: 'login',
    redirect: _redirectToHome,
    builder: (context, state) => LoginScreen(),
  ),
  GoRoute(
    path: '/home',
    name: 'home',
    builder: (context, state) => const ListScreen(),
  ),
  GoRoute(
    path: '/carrito',
    name: 'carrito',
    builder: (context, state) => CarritoScreen(),
  ),
  GoRoute(
    path: '/pedido',
    name: 'pedido',
    builder: (context, state) => PedidoScreen(),
  ),
  GoRoute(
    path: '/cliente',
    name: 'cliente',
    builder: (context, state) => ClienteScreen(),
  ),
  GoRoute(
    path: '/ajustes',
    name: 'ajustes',
    builder: (context, state) => AjustesScreen(),
  ),

  /* GoRoute(
    path: '/settings',
    builder: (context, state) => const ClientSettings(),
  ),*/
]);
Future<String?> _redirectToLogin(
    BuildContext context, GoRouterState state) async {
  try {
    final session = supabase.auth.currentSession;
    if (session != null) {
      /*BlocProvider.of<SessionCubit>(context)
            .chargeDefaultLatLong(int.parse(response1['cod_agencia']));*/
      return null;
    } else {
      return '/login';
    }
  } catch (error) {
    if (error is PostgrestException) {
      debugPrint('Error postgress===>: $error');
    }
    debugPrint('Error: $error');
  }
  return null;
}

String? _redirectToHome(BuildContext context, GoRouterState state) {
  try {
    final session = supabase.auth.currentSession;
    if (session != null) {
      return '/';
    } else {
      return null;
    }
  } catch (error) {
    debugPrint('Error: $error');
  }
  return null;
}
