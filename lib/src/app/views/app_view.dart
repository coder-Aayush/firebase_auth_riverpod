import 'package:firebase_auth_riverpod/src/feature/auth/views/login_view.dart';
import 'package:flutter/material.dart';

class AppView extends StatelessWidget {
  const AppView({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          colorScheme: const ColorScheme.light().copyWith(primary: Colors.red)),
      home: const LoginView(),
    );
  }
}
