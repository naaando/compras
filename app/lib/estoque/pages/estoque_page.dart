import 'package:app_compras/estoque/cubit/estoque_cubit.dart';
import 'package:app_compras/estoque/cubit/estoque_state.dart';
import 'package:app_compras/estoque/models/produto.dart';
import 'package:app_compras/estoque/pages/add_produto_estoque_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:remixicon/remixicon.dart';

class EstoquePage extends StatelessWidget {
  const EstoquePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Estoque'),
      ),
      body: BlocBuilder<EstoqueCubit, EstoqueState>(
        builder: (context, state) => state.when(
          loading: (List<Produto> data) => const Center(
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
                  builder: (context) => const AddProdutoEstoquePage()));
        },
        tooltip: 'Novo item de compra',
        child: const Icon(Remix.add_fill),
      ),
    );
  }
}
