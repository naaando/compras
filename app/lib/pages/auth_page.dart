// ignore_for_file: prefer_const_constructors

import 'package:app_compras/auth/google_auth.dart';
import 'package:app_compras/auth/user.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class AuthPage extends StatelessWidget {
  const AuthPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: const Text('Tela de login'),
          ),
          Center(
            child: FilledButton(
              onPressed: () {
                User user = Provider.of<User>(context, listen: false);
                GoogleAuth().login(user);
              },
              child: const Text('Login com google'),
            ),
          )
        ],
      ),
    );
  }
}
