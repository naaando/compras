// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'lista_de_compras.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ListaDeComprasDefaultImpl _$$ListaDeComprasDefaultImplFromJson(
        Map<String, dynamic> json) =>
    _$ListaDeComprasDefaultImpl(
      id: (json['id'] as num).toInt(),
      produtos: (json['produtos'] as List<dynamic>)
          .map((e) => Produto.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$ListaDeComprasDefaultImplToJson(
        _$ListaDeComprasDefaultImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'produtos': instance.produtos,
    };
