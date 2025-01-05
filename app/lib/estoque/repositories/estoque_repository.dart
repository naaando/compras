import 'package:app_compras/database/database.dart';
import 'package:app_compras/estoque/models/produto.dart';

class EstoqueRepository {
  final AppDatabase database;

  EstoqueRepository(this.database);

  Future<List<Produto>> todos() async {
    return database
        .select(database.estoqueTable)
        .map(
          (row) => Produto(
            id: row.id,
            name: row.name,
          ),
        )
        .get();
  }

  adicionarItem({required String name}) {
    return database
        .into(database.estoqueTable)
        .insert(EstoqueTableCompanion.insert(name: name));
  }
}
