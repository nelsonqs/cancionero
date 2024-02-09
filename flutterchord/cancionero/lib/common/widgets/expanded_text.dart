import 'package:flutter/material.dart';

class ExpandedText extends StatelessWidget {
  final String labelText;
  final TextStyle? style;

  const ExpandedText(
      {Key? key,
      required this.labelText,
      this.style})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Text(
        labelText,
        maxLines: 2,
        overflow: TextOverflow.ellipsis,
        style: style,
      ),
    );
  }
}
