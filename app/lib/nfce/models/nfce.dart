import 'package:app_compras/nfce/models/nfce_item.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'nfce.freezed.dart';
part 'nfce.g.dart';

@freezed
sealed class Nfce with _$Nfce {
  const factory Nfce.processed({
    required int id,
    required String? url,
    required String? access_key,
    required String? company_name,
    required String? issue_date,
    required String? total_before_discount,
    required List<NfceItem> items,
  }) = NfceProcessed;

  const factory Nfce.processing({
    required int id,
    required String? url,
    required String? access_key,
  }) = NfceProcessing;

  factory Nfce.fromJson(Map<String, Object?> json) => _$NfceFromJson(json);
}
