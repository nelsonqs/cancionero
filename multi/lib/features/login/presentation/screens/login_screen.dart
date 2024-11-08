import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:multi/core/app_asset.dart';
import 'package:multi/core/app_color.dart';
import 'package:multi/features/login/infrastructure/inputs/username.dart';
import 'package:multi/features/login/presentation/cubit/login_cubit.dart';
import 'package:multi/features/widgets/inputs/custom_filled_button.dart';
import 'package:multi/features/widgets/inputs/custom_text_login.dart';
import 'package:multi/features/widgets/outputs/utils.dart';
import 'package:shared_preferences/shared_preferences.dart';

class LoginScreen extends StatelessWidget {
  static const String name = 'login';
  LoginScreen({super.key});
  final FocusNode _passwordFocusNode = FocusNode();
  final FocusNode _submmitFocusNode = FocusNode();
  final TextEditingController textControllerLogin = TextEditingController();
  final TextEditingController textControllerPassword = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final loginCubit = context.watch<LoginCubit>();
    syncTextAndCursor(
        loginCubit.state.username, textControllerLogin, loginCubit);
        syncTextAndCursorPassword(loginCubit.state.password.value, textControllerPassword);

    return Scaffold(
        body: Form(
      child: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: SingleChildScrollView(
            child: Column(
              children: [
                Container(
                  margin: const EdgeInsets.all(35.0),
                  child: Image.asset(AppAsset.icoMulti, height: 250.0)
                      
                ),
                if (!loginCubit.state.offline)
                  CustomTextLogin(
                      controller: textControllerLogin,
                      onChange: loginCubit.usernameChanged,
                      onFieldSubmitted: (_) {
                        FocusScope.of(context).requestFocus(_passwordFocusNode);
                      },
                      label: 'invitado',
                      errorMessage: loginCubit.state.username.errorMessage,
                      sufixIcon: loginCubit.state.username.value.isNotEmpty
                          ? IconButton(
                              onPressed: () {
                                loginCubit.usernameChanged('');
                              },
                              icon: const Icon(
                                Icons.delete_forever,
                                color: LightThemeColor.accent,
                                size: 20,
                              ),
                            )
                          : null,
                      prefixIcon: const Icon(Icons.person)),
                const SizedBox(height: 20),
                if (!loginCubit.state.offline)
                  CustomTextLogin(
                    label: 'clavetemporal',
                    prefixIcon: const Icon(Icons.password),
                    controller: textControllerPassword,
                    obscureText: !loginCubit.state.visibililty,
                    errorMessage: loginCubit.state.password.errorMessage,
                    onFieldSubmitted: (_) {
                      FocusScope.of(context).requestFocus(_submmitFocusNode);
                    },
                    onChange: loginCubit.passwordChanged,
                    focusNode: _passwordFocusNode,
                    sufixIcon: IconButton(
                      onPressed: () {
                        loginCubit.changeVisibility();
                      },
                      icon: Icon(
                        loginCubit.state.visibililty
                            ? Icons.visibility
                            : Icons.visibility_off_outlined,
                        color: LightThemeColor.accent,
                        size: 20,
                      ),
                    ),
                  ),
                const SizedBox(height: 20),
                SizedBox(
                    width: double.infinity,
                    child: CustomFilledButton(
                        onPreseed: () {
                          
                            loginCubit.onSubmit(context).then((value) {
                              if (value.state) {
                                FocusManager.instance.primaryFocus?.unfocus();
                                context.push('/home');
                              }
                              if (!value.state) {
                                mostrarMensaje(context, value.message,
                                    'Mensaje');
                              }
                            });
                           
                        },
                        prefixIcon: const Icon(Icons.safety_check_rounded),
                        label: const Text('INGRESAR'),
                        focusNode: _submmitFocusNode,
                        isPreloader: loginCubit.state.status)),
                const SizedBox(height: 10),
                Center(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Checkbox(
                        value: loginCubit.state.remember,
                        onChanged: loginCubit.changeRemember,
                        activeColor: LightThemeColor.accent,
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 20),
                Text(
                'Versión 1.0.0',
                style: TextStyle(
                    color:Colors.amber[700],
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                )),
              ],
            ),
          ),
        ),
      ),
    ));
  }

  void syncTextAndCursor(
    Username value,
    TextEditingController controller,
    LoginCubit loginCubit,
  ) async {
    if (value.isPure) {
      final SharedPreferences prefs = await SharedPreferences.getInstance();
      String userRemember = prefs.getString('username_login') ?? '';
      if (userRemember != '') {
        loginCubit.usernameChanged(userRemember);
        loginCubit.changeRemember(true);
      }
    } else {
      if (controller.text != value.value) {
        controller.text = value.value;
        controller.selection = TextSelection.fromPosition(
            TextPosition(offset: controller.text.length));
      }
    }
  }

  static void syncTextAndCursorPassword(
      String value, TextEditingController controller) {
    if (controller.text != value) {
      controller.text = value;
      controller.selection = TextSelection.fromPosition(
          TextPosition(offset: controller.text.length));
    }
  }
}
