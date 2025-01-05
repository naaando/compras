import 'package:app_compras/estoque/models/produto.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'estoque_state.freezed.dart';

@freezed
sealed class EstoqueState with _$EstoqueState {
  factory EstoqueState.loading({
    @Default([]) List<Produto> itens,
  }) = _Loading;

  factory EstoqueState.data({
    @Default([]) List<Produto> itens,
  }) = _Data;

  factory EstoqueState.error({
    @Default('Erro ao carregar a lista de compras') String errorMessage,
  }) = _Error;
}
