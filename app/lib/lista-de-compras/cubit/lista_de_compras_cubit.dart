import 'package:app_compras/lista-de-compras/cubit/lista_de_compras_state.dart';
import 'package:app_compras/lista-de-compras/repositories/lista_de_compras_repository.dart';
import 'package:bloc/bloc.dart';

class ListaDeComprasCubit extends Cubit<ListaDeComprasState> {
  final ListaDeComprasRepository repository;

  ListaDeComprasCubit(this.repository) : super(ListaDeComprasState.loading()) {
    fetch();
  }

  Future<void> fetch() async {
    var x = await repository.buscar();
    emit(ListaDeComprasState.data(itens: x));
  }

  Future<void> adicionarItem({
    required String name,
  }) async {
    await repository.adicionarItem(name: name);
    await fetch();
  }
}
