import 'package:flutter/material.dart';

class CustomListTitle extends StatelessWidget {
  final String? title;
  final String? subtitle;
  final Function() onPressed;
  final Icon iconButton;

  const CustomListTitle({Key? key, this.title, this.subtitle, required this.onPressed, required this.iconButton})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        title ?? '',
        style: Theme.of(context)
            .textTheme
            .headlineSmall!
            .copyWith(color: Colors.black87),
      ),
      subtitle: Text(subtitle ?? ''),
      trailing: IconButton(icon: iconButton, onPressed: onPressed),
    );
  }
}
