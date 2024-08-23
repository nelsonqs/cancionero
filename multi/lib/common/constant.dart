import 'package:flutter/material.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

final supabase = Supabase.instance.client;
const preloader = Center(child: CircularProgressIndicator(color: Colors.blue));

const preloader2 =
    Center(
  child: SizedBox(
    width: 20.0,
    height: 20.0,
    child: CircularProgressIndicator(
      color: Colors.blueAccent,
      strokeWidth: 2.0, // Adjust the stroke width if needed
    ),
  ),
);


Future<void> refreshSessionInConstant() async {
  if (isAuthenticatedInConstant() &&
      supabase.auth.currentSession!.expiresAt != null) {
    final expiresAt = DateTime.fromMillisecondsSinceEpoch(
        supabase.auth.currentSession!.expiresAt! * 1000);
    final timeDifference = expiresAt.difference(DateTime.now());

    if (timeDifference.inMinutes <= 5) {
      try {
        await supabase.auth.refreshSession();
      } catch (e) {
        debugPrint('error====> $e');
      }
    }
  }
}

bool isAuthenticatedInConstant() {
  return supabase.auth.currentUser != null;
}


