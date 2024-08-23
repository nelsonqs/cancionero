import 'package:flutter/material.dart';
import 'package:multi/common/constant.dart';
import 'package:multi/core/app_color.dart';

class CustomFilledButton extends StatelessWidget {
  final Function() onPreseed;
  final String? Function(String?)? validator;
  final Widget prefixIcon;
  final Widget label;
  final FocusNode? focusNode;
  final Color? color;
  final bool? isPreloader;

  const CustomFilledButton({
    super.key,
    required this.onPreseed,
    this.validator,
    required this.prefixIcon,
    required this.label,
    this.focusNode,
    this.color = AppColors.cardLeterBlue,
    this.isPreloader = false,
  });
  @override
  Widget build(BuildContext context) {
    return FilledButton.tonalIcon(
      onPressed: isPreloader! ? null:onPreseed ,
      icon: isPreloader! ? preloader2 : prefixIcon,
      label: label,
      focusNode: focusNode,
      style: ButtonStyle(
        backgroundColor: WidgetStateProperty.all<Color>(
            isPreloader! ? AppColors.textColor2 : color!),
      ),
    );
  }
}
