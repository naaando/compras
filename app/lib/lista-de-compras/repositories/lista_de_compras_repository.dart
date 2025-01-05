import 'dart:async';

import 'package:app_compras/database/database.dart';
import 'package:app_compras/lista-de-compras/models/produto.dart';

class ListaDeComprasRepository {
  final AppDatabase database;

  ListaDeComprasRepository(this.database);

  FutureOr<List<Produto>> buscar() async {
    return database
        .select(database.produtoTable)
        .map((row) => Produto(
              id: row.id,
              name: row.name,
            ))
        .get();
  }

  Future<void> adicionarItem({
    required String name,
  }) async {
    await database
        .into(database.produtoTable)
        .insert(ProdutoTableCompanion.insert(name: name));
  }
}
