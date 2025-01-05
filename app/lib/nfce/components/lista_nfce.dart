import 'package:app_compras/nfce/models/nfce.dart';
import 'package:app_compras/nfce/pages/produtos_nfce_page.dart';
import 'package:app_compras/nfce/utils.dart';
import 'package:flutter/material.dart';

class ListaNfce extends StatelessWidget {
  final List<Nfce> nfces;

  const ListaNfce({super.key, required this.nfces});

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: nfces
          .map(
            (Nfce e) => switch (e) {
              NfceProcessing(:final id) => const ListTile(
                  title: Text('Em processamento'),
                ),
              NfceProcessed(
                company_name: final companyName,
                total_before_discount: final totalBeforeDiscount,
                issue_date: final issueDate,
                items: final items,
              ) =>
                ListTile(
                  title: Text(companyName ?? ''),
                  subtitle: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      dateText(issueDate),
                      Text("${items.length} itens"),
                      moneyText(totalBeforeDiscount),
                    ],
                  ),
                  onTap: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) => ProdutosNfcePage(nfce: e),
                      ),
                    );
                  },
                ),
            },
          )
          .toList(),
    );
  }
}
