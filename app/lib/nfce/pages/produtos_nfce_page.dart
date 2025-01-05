import 'package:app_compras/nfce/components/lista_produtos.dart';
import 'package:app_compras/nfce/models/nfce.dart';
import 'package:app_compras/nfce/models/nfce_item.dart';
import 'package:flutter/material.dart';

class ProdutosNfcePage extends StatelessWidget {
  final Nfce nfce;
  const ProdutosNfcePage({super.key, required this.nfce});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          nfce.map(
              processed: (NfceProcessed value) => value.company_name ?? '',
              processing: (NfceProcessing value) => ''),
        ),
      ),
      body: ListaProdutos(
        produtos: nfce.map(
          processed: (NfceProcessed value) => value.items,
          processing: (NfceProcessing value) => <NfceItem>[],
        ),
      ),
    );
  }
}
