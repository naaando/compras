// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'nfce_item.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$NfceItemImpl _$$NfceItemImplFromJson(Map<String, dynamic> json) =>
    _$NfceItemImpl(
      id: (json['id'] as num).toInt(),
      name: json['name'] as String?,
      code: json['code'] as String?,
      price: json['price'] as String?,
      quantity: json['quantity'] as String?,
      currency: json['currency'] as String?,
      unity_of_measure: json['unity_of_measure'] as String?,
      total_price: json['total_price'] as String?,
      category: json['category'] as String?,
    );

Map<String, dynamic> _$$NfceItemImplToJson(_$NfceItemImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'code': instance.code,
      'price': instance.price,
      'quantity': instance.quantity,
      'currency': instance.currency,
      'unity_of_measure': instance.unity_of_measure,
      'total_price': instance.total_price,
      'category': instance.category,
    };
