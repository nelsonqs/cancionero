import 'package:flutter/material.dart';
import 'package:multi/core/app_constant_messages.dart';

void mostrarMensaje(context, mensaje, tipo) {
  final snackBar = SnackBar(
    duration: const Duration(seconds: 3),
    content: Center(child: Text(mensaje)),
    backgroundColor: (tipo == AppConstantMessage.message)
        ? const Color(0xFF4CAF50)
        : Colors.redAccent,
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0)),
    behavior: SnackBarBehavior.floating,
    elevation: 16.0,
    margin: const EdgeInsets.all(20),
  );
  ScaffoldMessenger.of(context).clearSnackBars();
  ScaffoldMessenger.of(context).showSnackBar(snackBar);
}