import 'package:freezed_annotation/freezed_annotation.dart';

part 'nfce_item.freezed.dart';
part 'nfce_item.g.dart';

@freezed
class NfceItem with _$NfceItem {
  factory NfceItem({
    required int id,
    String? name,
    String? code,
    String? price,
    String? quantity,
    String? currency,
    String? unity_of_measure,
    String? total_price,
    String? category,
  }) = _NfceItem;

  factory NfceItem.fromJson(Map<String, Object?> json) =>
      _$NfceItemFromJson(json);
}
