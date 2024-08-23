import 'package:flutter/material.dart';

class CustomCard extends StatelessWidget {
  final Color? surfaceTintColor;
  final Widget? leading;
  final Widget? trailing;
  final Widget? title;
  final Widget? subtitle;

  const CustomCard(
      {super.key,
      required this.leading,
      required this.trailing,
      this.surfaceTintColor, this.title, this.subtitle});
  @override
  Widget build(BuildContext context) {
    return Card(
      shadowColor: Colors.grey,
      surfaceTintColor: surfaceTintColor ?? Colors.white,
      shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(
              top: Radius.circular(10), bottom: Radius.circular(10))),
      elevation: 10,
      margin: const EdgeInsets.all(10),
      child: ListTile(
        leading: leading,
        title: title,
        subtitle: subtitle,
        trailing: trailing,
      ),
    );
  }
}
