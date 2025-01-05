import 'package:app_compras/nfce/models/nfce.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'nfces_states.freezed.dart';

enum Visualizacao { notas, produtos }

@freezed
class NfcesFilter with _$NfcesFilter {
  const factory NfcesFilter({
    required Visualizacao visualizacao,
    Nfce? nfce,
  }) = _NfcesFilter;
}

@freezed
sealed class NfcesState with _$NfcesState {
  const factory NfcesState.loading({
    @Default(NfcesFilter(visualizacao: Visualizacao.notas)) NfcesFilter filter,
  }) = _Loading;

  const factory NfcesState.offline({
    @Default(NfcesFilter(visualizacao: Visualizacao.notas)) NfcesFilter filter,
  }) = _Offline;

  const factory NfcesState.data({
    required List<Nfce> nfces,
    required NfcesFilter filter,
  }) = _Data;

  const factory NfcesState.error(
    String errorMessage, {
    required NfcesFilter filter,
  }) = _Error;
}
