import 'package:app_compras/nfce/components/lista_nfce.dart';
import 'package:app_compras/nfce/components/lista_produtos.dart';
import 'package:app_compras/nfce/cubit/nfces_cubit.dart';
import 'package:app_compras/nfce/cubit/nfces_states.dart';
import 'package:app_compras/nfce/models/nfce.dart';
import 'package:app_compras/nfce/pages/scan_qr_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:remixicon/remixicon.dart';

class NfcesPage extends StatelessWidget {
  const NfcesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Notas fiscais'),
        actions: [
          IconButton(
            icon: const Icon(Remix.link),
            tooltip: 'Adicionar link',
            onPressed: () => _openLinkPopup(context),
          ),
          IconButton(
            icon: const Icon(Remix.qr_code_line),
            tooltip: 'Importar nota fiscal via QR Code',
            onPressed: () => _openScanQrPage(context),
          )
        ],
      ),
      body: BlocBuilder<NfcesCubit, NfcesState>(
        builder: (context, state) => state.when(
          loading: (NfcesFilter filter) => const Center(
            child: CircularProgressIndicator(),
          ),
          data: (List<Nfce> nfces, NfcesFilter filter) => RefreshIndicator(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              mainAxisSize: MainAxisSize.max,
              children: <Widget>[
                _viewSwitch(filter, context),
                Expanded(
                  child: switch (filter.visualizacao) {
                    Visualizacao.notas => ListaNfce(
                        nfces: nfces,
                      ),
                    Visualizacao.produtos => ListaProdutos(
                        produtos: nfces
                            .whereType<NfceProcessed>()
                            .expand((e) => e.items)
                            .toList(),
                      ),
                  },
                ),
              ],
            ),
            onRefresh: () => _refresh(context),
          ),
          error: (String errorMessage, NfcesFilter filter) =>
              Text(errorMessage),
          offline: (NfcesFilter filter) {
            return Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    Remix.cloud_off_fill,
                    color: Colors.amber.shade400,
                  ),
                  const SizedBox(width: 8),
                  Text(
                    'Sem conexão',
                    style: Theme.of(context)
                        .textTheme
                        .headlineSmall
                        ?.copyWith(color: Colors.black54),
                  ),
                ],
              ),
            );
          },
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => _openScanQrPage(context),
        tooltip: 'Importar nota fiscal via QR Code',
        child: const Icon(Remix.qr_code_line),
      ),
    );
  }

  Row _viewSwitch(NfcesFilter filter, BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.max,
      children: [
        const SizedBox(width: 16),
        Wrap(
          spacing: 8,
          children: [
            ChoiceChip(
              label: const Text("Notas"),
              selected: filter.visualizacao == Visualizacao.notas,
              onSelected: (value) =>
                  context.read<NfcesCubit>().visualizarNotas(),
            ),
            ChoiceChip(
              label: const Text("Produtos"),
              selected: filter.visualizacao == Visualizacao.produtos,
              onSelected: (value) =>
                  context.read<NfcesCubit>().visualizarProdutos(),
            ),
          ],
        ),
      ],
    );
  }

  void _openScanQrPage(BuildContext context) {
    Navigator.of(context).push(
      MaterialPageRoute(
        builder: (context) => const ScanQrPage(),
      ),
    );
  }

  void _openLinkPopup(BuildContext context) {
    showDialog(
      context: context,
      builder: (context) {
        var textEditingController = TextEditingController();
        return AlertDialog(
          title: const Text('Adicionar link'),
          content: TextField(
            controller: textEditingController,
          ),
          actions: [
            TextButton(
              onPressed: () => Navigator.pop(context),
              child: const Text('Cancelar'),
            ),
            TextButton(
              onPressed: () async {
                Navigator.pop(context);

                await context
                    .read<NfcesCubit>()
                    .adicionarQrCode(textEditingController.text);

                if (context.mounted) {
                  _refresh(context);
                }
              },
              child: const Text('Adicionar'),
            ),
          ],
        );
      },
    );
  }

  _refresh(BuildContext context) {
    context.read<NfcesCubit>().fetch();
  }
}
