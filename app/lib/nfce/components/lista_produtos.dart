import 'package:app_compras/nfce/models/nfce_item.dart';
import 'package:app_compras/nfce/utils.dart';
import 'package:flutter/material.dart';

class ListaProdutos extends StatelessWidget {
  final List<NfceItem> produtos;

  const ListaProdutos({super.key, required this.produtos});

  @override
  Widget build(
    BuildContext context,
  ) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      mainAxisSize: MainAxisSize.max,
      children: <Widget>[
        Expanded(
          child: ListView(
            children: produtos
                .map(
                  (e) => ListTile(
                    title: Text(e.name ?? ''),
                    subtitle: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        qtdPrice(e),
                        moneyText(e.total_price),
                      ],
                    ),
                  ),
                )
                .toList(),
          ),
        )
      ],
    );
  }
}
