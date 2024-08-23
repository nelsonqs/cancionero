import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:multi/features/widgets/inputs/custom_text_login.dart';
import 'package:multi/template_new_feature_dont_change_these/presentation/cubit/template_form_cubit.dart';


class ClienteScreen extends StatelessWidget {
  static const String name = 'login';
  ClienteScreen({super.key});
  
  final TextEditingController textControllerLogin = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final loginCubit = context.watch<TemplateFormCubit>();
    
    return Scaffold(
        body: Form(
      child: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: SingleChildScrollView(
            child: Column(
              children: [
                
                CustomTextLogin(
                    controller: textControllerLogin,
                    onChange: loginCubit.chanheTemplate,
                    label: 'Clienteeeeee',
                    prefixIcon: const Icon(Icons.person)),
              ],
            ),
          ),
        ),
      ),
    ));
  } 
}