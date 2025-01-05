import 'package:app_compras/estoque/cubit/estoque_state.dart';
import 'package:app_compras/estoque/repositories/estoque_repository.dart';
import 'package:bloc/bloc.dart';

class EstoqueCubit extends Cubit<EstoqueState> {
  final EstoqueRepository repository;

  EstoqueCubit(this.repository) : super(EstoqueState.loading()) {
    fetch();
  }

  Future<void> fetch() async {
    var data = await repository.todos();
    emit(EstoqueState.data(itens: data));
  }

  Future<void> adicionarItem({
    required String name,
  }) async {
    await repository.adicionarItem(name: name);
    await fetch();
  }
}
