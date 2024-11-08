import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:multi/common/app_router.dart';
import 'package:multi/common/isar_manager.dart';
import 'package:multi/core/app_theme.dart';
import 'package:multi/features/ajustes/presentation/cubit/ajustes_form_cubit.dart';
import 'package:multi/features/carrito/presentation/cubit/carrito_cubit.dart';
import 'package:multi/features/clientes/presentation/cubit/cliente_form_cubit.dart';
import 'package:multi/features/login/presentation/cubit/login_cubit.dart';
import 'package:multi/features/pedidos/presentation/cubit/pedido_form_cubit.dart';
import 'package:multi/features/products/presentation/cubit/list_item_form_cubit.dart';
import 'package:multi/features/products/presentation/screens/list_screen.dart';
import 'package:multi/template_new_feature_dont_change_these/presentation/cubit/template_form_cubit.dart';
import 'package:path_provider/path_provider.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();
void main() async {
  await dotenv.load(fileName: ".env");
  WidgetsFlutterBinding.ensureInitialized();
  try {
    final pathDirectory = await getApplicationDocumentsDirectory();
    await Supabase.initialize(
      url: dotenv.env['API_URL_CLOUD'].toString(),
      anonKey: dotenv.env['ANON_KEY_CLOUD'].toString(),
    );

    if (pathDirectory.existsSync()) {
      await IsarManager().initIsar(pathDirectory.path);
    }

    runApp(const MainApp());
  } catch (e) {
    if (e is SocketException) {
      // Manej o de la excepción de resolución de host
      debugPrint('Error de resolución de host: ${e.message}');
      // Puedes mostrar un mensaje de error al usuario o realizar otras acciones necesarias aquí
    } else {
      // Otras excepciones que no sean de resolución de host
      debugPrint('Error al inicializar Supabase: $e');
    }
  }
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    final scaffoldKey = GlobalKey<ScaffoldMessengerState>();
    return MultiBlocProvider(
      providers: [
        BlocProvider<TemplateFormCubit>(
            create: (BuildContext context) => TemplateFormCubit()),
        BlocProvider<LoginCubit>(
            create: (BuildContext context) => LoginCubit()),
        BlocProvider<ListItemFormCubit>(
          create: (BuildContext context) => ListItemFormCubit(),
          child: const ListScreen(),
        ),
        BlocProvider<CarritoCubit>(
            create: (BuildContext context) => CarritoCubit()),
        BlocProvider<ClienteFormCubit>(
            create: (BuildContext context) => ClienteFormCubit()),
        BlocProvider<PedidoFormCubit>(
            create: (BuildContext context) => PedidoFormCubit()),
        BlocProvider<AjustesFormCubit>(
            create: (BuildContext context) => AjustesFormCubit()),
      ],
      child: MaterialApp.router(
          localizationsDelegates: GlobalMaterialLocalizations.delegates,
          supportedLocales: const [
            Locale('es', 'BO'), // Cambia esto según tus necesidades
          ],
          scaffoldMessengerKey: scaffoldKey,
          title: 'Multi S.R.L',
          debugShowCheckedModeBanner: false,
          theme: AppThemes.appThemeData[AppTheme.lightTheme]!,
          routerConfig: appRouter),
    );
  }
}
