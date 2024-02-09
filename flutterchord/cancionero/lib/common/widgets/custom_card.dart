import 'package:flutter/material.dart';

class CustomCard extends StatelessWidget {
  final List<Widget> children;

  const CustomCard({
    super.key,
    required this.children,
  });
  @override
  Widget build(BuildContext context) {
    return Card(
      shadowColor: Colors.grey,
      surfaceTintColor: Colors.white,
      shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(
              top: Radius.circular(10), bottom: Radius.circular(10))),
      elevation: 10,
      margin: const EdgeInsets.all(10),
      child: SizedBox(
        width: MediaQuery.of(context).size.width * 0.95,
        child: Column(
          //crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Column(
                children: children,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
