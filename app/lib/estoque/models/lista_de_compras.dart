import 'package:app_compras/lista-de-compras/models/produto.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'lista_de_compras.freezed.dart';
part 'lista_de_compras.g.dart';

@freezed
sealed class ListaDeCompras with _$ListaDeCompras {
  const factory ListaDeCompras({
    required int id,
    required List<Produto> produtos,
  }) = _ListaDeComprasDefault;

  factory ListaDeCompras.fromJson(Map<String, Object?> json) =>
      _$ListaDeComprasFromJson(json);
}
