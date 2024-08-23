import 'package:flutter/material.dart';
import 'package:multi/core/app_color.dart';
import 'package:multi/core/app_style.dart';



class CustomTextLogin extends StatelessWidget {
  final String? label;
  final String? hint;
  final String? errorMessage;
  final Function(String)? onChange;
  final String? Function(String?)? validator;
  final bool? obscureText;
  final Widget? prefixIcon;
  final Widget? sufixIcon;
  final TextEditingController? controller;
  final Function(String)? onFieldSubmitted;
  final FocusNode? focusNode;
  final String? initialValue;
  final TextInputType? keyboardType;
  final bool? readOnly;
  final bool? filled;
  final Color? filledColor;

  const CustomTextLogin(
      {super.key,
      this.label,
      this.hint,
      this.errorMessage,
      this.onChange,
      this.validator,
      this.obscureText = false,
      this.prefixIcon,
      this.sufixIcon,
      this.controller,
      this.onFieldSubmitted,
      this.focusNode,
      this.initialValue,
      this.keyboardType,
      this.readOnly = false,
      this.filled = false,
      this.filledColor = Colors.white});
  @override
  Widget build(BuildContext context) {
    final border = OutlineInputBorder(
        borderSide: const BorderSide(color: LightThemeColor.accent, width: 1.0),
        borderRadius: BorderRadius.circular(18));
    return TextFormField(
      initialValue: initialValue,
      onChanged: onChange,
      controller: controller,
      validator: validator,
      keyboardType: keyboardType,
      readOnly: readOnly!,
      obscureText: obscureText!,
      decoration: InputDecoration(
          filled: filled,
          fillColor: filledColor,
          suffixIcon: sufixIcon,
          enabledBorder: border,
          errorText: errorMessage,
          contentPadding:
              const EdgeInsets.only(top: 12, bottom: 12, left: 15, right: 15),
          focusedBorder: border.copyWith(
              borderSide:
                  const BorderSide(color: LightThemeColor.accent, width: 1.0)),
          errorBorder: border.copyWith(
              borderSide: BorderSide(color: Colors.red.shade200)),
          focusedErrorBorder: border.copyWith(
              borderSide: BorderSide(color: Colors.red.shade200)),
          isDense: true,
          label: label != null ? Text(label!) : null,
          labelStyle: bodyTextLight,
          hintText: hint,
          focusColor: LightThemeColor.accent,
          prefixIconColor: LightThemeColor.accent,
          prefixIcon: prefixIcon),
      onFieldSubmitted: onFieldSubmitted,
      focusNode: focusNode,
    );
  }
}
