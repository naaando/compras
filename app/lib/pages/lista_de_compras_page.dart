import 'package:app_compras/lista-de-compras/cubit/lista_de_compras_cubit.dart';
import 'package:app_compras/lista-de-compras/cubit/lista_de_compras_state.dart';
import 'package:app_compras/lista-de-compras/models/produto.dart';
import 'package:app_compras/pages/add_item_de_compra_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:remixicon/remixicon.dart';

class ListaDeComprasPage extends StatelessWidget {
  const ListaDeComprasPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Lista de compras'),
      ),
      body: BlocBuilder<ListaDeComprasCubit, ListaDeComprasState>(
        builder: (context, state) => state.when(
          loading: (List<String> data) => const Center(
            child: CircularProgressIndicator(),
          ),
          data: (List<Produto> data) => ListView.builder(
            itemCount: data.length,
            itemBuilder: (context, index) => ListTile(
              title: Text(data[index].name),
            ),
          ),
          error: (erro) => Text(erro),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => const AddItemDeCompraPage()));
        },
        tooltip: 'Novo item de compra',
        child: const Icon(Remix.add_fill),
      ),
    );
  }
}
