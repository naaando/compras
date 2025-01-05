import 'package:app_compras/lista-de-compras/models/produto.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'lista_de_compras_state.freezed.dart';

@freezed
sealed class ListaDeComprasState with _$ListaDeComprasState {
  factory ListaDeComprasState.loading({
    @Default([]) List<String> itens,
  }) = _Loading;

  factory ListaDeComprasState.data({
    @Default([]) List<Produto> itens,
  }) = _Data;

  factory ListaDeComprasState.error({
    @Default('Erro ao carregar a lista de compras') String errorMessage,
  }) = _Error;
}
