// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'nfce.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$NfceProcessedImpl _$$NfceProcessedImplFromJson(Map<String, dynamic> json) =>
    _$NfceProcessedImpl(
      id: (json['id'] as num).toInt(),
      url: json['url'] as String?,
      access_key: json['access_key'] as String?,
      company_name: json['company_name'] as String?,
      issue_date: json['issue_date'] as String?,
      total_before_discount: json['total_before_discount'] as String?,
      items: (json['items'] as List<dynamic>)
          .map((e) => NfceItem.fromJson(e as Map<String, dynamic>))
          .toList(),
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$NfceProcessedImplToJson(_$NfceProcessedImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'url': instance.url,
      'access_key': instance.access_key,
      'company_name': instance.company_name,
      'issue_date': instance.issue_date,
      'total_before_discount': instance.total_before_discount,
      'items': instance.items,
      'runtimeType': instance.$type,
    };

_$NfceProcessingImpl _$$NfceProcessingImplFromJson(Map<String, dynamic> json) =>
    _$NfceProcessingImpl(
      id: (json['id'] as num).toInt(),
      url: json['url'] as String?,
      access_key: json['access_key'] as String?,
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$NfceProcessingImplToJson(
        _$NfceProcessingImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'url': instance.url,
      'access_key': instance.access_key,
      'runtimeType': instance.$type,
    };
