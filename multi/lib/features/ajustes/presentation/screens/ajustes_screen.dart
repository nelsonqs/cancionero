import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:isar/isar.dart';
import 'package:multi/common/isar_manager.dart';
import 'package:multi/core/app_color.dart';
import 'package:multi/features/ajustes/presentation/cubit/ajustes_form_cubit.dart';
import 'package:multi/features/widgets/inputs/custom_filled_button.dart';
import 'package:multi/features/widgets/inputs/custom_text_login.dart';
import 'package:multi/template_new_feature_dont_change_these/presentation/cubit/template_form_cubit.dart';
import 'package:awesome_snackbar_content/awesome_snackbar_content.dart';

class AjustesScreen extends StatelessWidget {
  static const String name = 'login';
  AjustesScreen({super.key});
  final Isar isar = IsarManager().isar;
  final TextEditingController textControllerLogin = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final ajusteCubit = context.watch<AjustesFormCubit>();

    return Scaffold(
      appBar: AppBar(
        backgroundColor: LightThemeColor.primaryLight,
        title: const Text('Ajustes'),
      ),
      body: Column(
        children: [
          Center(
            child: CustomFilledButton(
                onPreseed: () {
                  ajusteCubit.onChargeCloudToLocalDB(context).then((value) {
                    if (value.state) {
                      final snackBar = SnackBar(
                        elevation: 0,
                        behavior: SnackBarBehavior.floating,
                        backgroundColor: Colors.transparent,
                        content: AwesomeSnackbarContent(
                          title: 'Done!',
                          message: 'Doneeeee!',

                          /// change contentType to ContentType.success, ContentType.warning or ContentType.help for variants
                          contentType: ContentType.failure,
                        ),
                      );

                      ScaffoldMessenger.of(context)
                        ..hideCurrentSnackBar()
                        ..showSnackBar(snackBar);
                    }
                    if (!value.state) {
                      final snackBar = SnackBar(
                        elevation: 0,
                        behavior: SnackBarBehavior.floating,
                        backgroundColor: Colors.transparent,
                        content: AwesomeSnackbarContent(
                          title: 'Error!',
                          message:
                              'This is an example error message that will be shown in the body of snackbar!',

                          /// change contentType to ContentType.success, ContentType.warning or ContentType.help for variants
                          contentType: ContentType.failure,
                        ),
                      );

                      ScaffoldMessenger.of(context)
                        ..hideCurrentSnackBar()
                        ..showSnackBar(snackBar);
                    }
                  });
                },
                prefixIcon: const Icon(Icons.safety_check_rounded),
                label: const Text('Cargar desde la Nube a Bd Local')),
          ),
          Center(
            child: CustomFilledButton(
                onPreseed: () {
                  ajusteCubit.compressImage(context).then((value) {
                    if (value.state) {
                      final snackBar = SnackBar(
                        elevation: 0,
                        behavior: SnackBarBehavior.floating,
                        backgroundColor: Colors.transparent,
                        content: AwesomeSnackbarContent(
                          title: 'Done!',
                          message: 'Compressed Doneeeee!',

                          /// change contentType to ContentType.success, ContentType.warning or ContentType.help for variants
                          contentType: ContentType.failure,
                        ),
                      );

                      ScaffoldMessenger.of(context)
                        ..hideCurrentSnackBar()
                        ..showSnackBar(snackBar);
                    }
                    if (!value.state) {
                      final snackBar = SnackBar(
                        elevation: 0,
                        behavior: SnackBarBehavior.floating,
                        backgroundColor: Colors.transparent,
                        content: AwesomeSnackbarContent(
                          title: 'Error!',
                          message:
                              'This is an example error message that will be shown in the body of snackbar!',

                          /// change contentType to ContentType.success, ContentType.warning or ContentType.help for variants
                          contentType: ContentType.failure,
                        ),
                      );

                      ScaffoldMessenger.of(context)
                        ..hideCurrentSnackBar()
                        ..showSnackBar(snackBar);
                    }
                  });
                },
                prefixIcon: const Icon(Icons.safety_check_rounded),
                label: const Text('Comprimir Imagenes')),
          ),
          Center(
            child: CustomFilledButton(
                onPreseed: () {
                  ajusteCubit.cleanDb().then((value) {
                    if (value.state) {
                      final snackBar = SnackBar(
                        elevation: 0,
                        behavior: SnackBarBehavior.floating,
                        backgroundColor: Colors.transparent,
                        content: AwesomeSnackbarContent(
                          title: 'Done!',
                          message: 'Clear db done!!!!!',

                          /// change contentType to ContentType.success, ContentType.warning or ContentType.help for variants
                          contentType: ContentType.failure,
                        ),
                      );

                      ScaffoldMessenger.of(context)
                        ..hideCurrentSnackBar()
                        ..showSnackBar(snackBar);
                    }
                    if (!value.state) {
                      final snackBar = SnackBar(
                        elevation: 0,
                        behavior: SnackBarBehavior.floating,
                        backgroundColor: Colors.transparent,
                        content: AwesomeSnackbarContent(
                          title: 'Error!',
                          message:
                              'This is an example error message that will be shown in the body of snackbar!',

                          /// change contentType to ContentType.success, ContentType.warning or ContentType.help for variants
                          contentType: ContentType.failure,
                        ),
                      );

                      ScaffoldMessenger.of(context)
                        ..hideCurrentSnackBar()
                        ..showSnackBar(snackBar);
                    }
                  });
                },
                prefixIcon: const Icon(Icons.safety_check_rounded),
                label: const Text('Limpiar Bd')),
          ),
          Center(
            child: CustomFilledButton(
                onPreseed: () {
                  ajusteCubit.importProductRangePrice(context).then((value) {
                    if (value.state) {
                      final snackBar = SnackBar(
                        elevation: 0,
                        behavior: SnackBarBehavior.floating,
                        backgroundColor: Colors.transparent,
                        content: AwesomeSnackbarContent(
                          title: 'Done!',
                          message: 'Product Prices Doneeeee!',

                          /// change contentType to ContentType.success, ContentType.warning or ContentType.help for variants
                          contentType: ContentType.failure,
                        ),
                      );

                      ScaffoldMessenger.of(context)
                        ..hideCurrentSnackBar()
                        ..showSnackBar(snackBar);
                    }
                    if (!value.state) {
                      final snackBar = SnackBar(
                        elevation: 0,
                        behavior: SnackBarBehavior.floating,
                        backgroundColor: Colors.transparent,
                        content: AwesomeSnackbarContent(
                          title: 'Error!',
                          message:
                              'This is an example error message that will be shown in the body of snackbar!',

                          /// change contentType to ContentType.success, ContentType.warning or ContentType.help for variants
                          contentType: ContentType.failure,
                        ),
                      );

                      ScaffoldMessenger.of(context)
                        ..hideCurrentSnackBar()
                        ..showSnackBar(snackBar);
                    }
                  });
                },
                prefixIcon: const Icon(Icons.safety_check_rounded),
                label: const Text('Comprimir Imagenes')),
          ),
        ],
      ),
    );
  }
}
