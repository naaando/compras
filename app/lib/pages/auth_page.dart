// ignore_for_file: prefer_const_constructors

import 'package:app_compras/auth/google_auth.dart';
import 'package:app_compras/auth/user.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class AuthPage extends StatelessWidget {
  final Object? error;

  const AuthPage({super.key, this.error});

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
              onPressed: () async {
                User user = Provider.of<User>(context, listen: false);

                try {
                  await GoogleAuth().login(user);
                } catch (error) {
                  Navigator.of(context).pushReplacement<void, void>(
                    MaterialPageRoute<void>(
                      builder: (BuildContext context) => AuthPage(error: error),
                    ),
                  );
                }
              },
              child: const Text('Login com google'),
            ),
          ),
          Center(
            child: Text(error.toString()),
          ),
        ],
      ),
    );
  }
}
