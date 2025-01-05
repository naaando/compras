import 'package:freezed_annotation/freezed_annotation.dart';

part 'produto.freezed.dart';
part 'produto.g.dart';

@freezed
sealed class Produto with _$Produto {
  const factory Produto({
    required int id,
    required String name,
  }) = _ProdutoDefault;

  factory Produto.fromJson(Map<String, Object?> json) =>
      _$ProdutoFromJson(json);
}
