import 'package:app_compras/nfce/pages/nfces_page.dart';
import 'package:flutter/material.dart';

class SimpleHomePage extends StatefulWidget {
  const SimpleHomePage({super.key, required this.title});

  final String title;

  @override
  State<SimpleHomePage> createState() => _SimpleHomePageState();
}

class _SimpleHomePageState extends State<SimpleHomePage>
    with TickerProviderStateMixin {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: NfcesPage(),
    );
  }

  @override
  void dispose() {
    super.dispose();
  }
}
