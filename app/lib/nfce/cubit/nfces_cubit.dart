import 'package:app_compras/nfce/exceptions/offline_exception.dart';
import 'package:app_compras/nfce/models/nfce.dart';
import 'package:app_compras/nfce/repositories/nfce_repository.dart';
import 'package:bloc/bloc.dart';

import 'nfces_states.dart';

class NfcesCubit extends Cubit<NfcesState> {
  final NfceRepository nfceRepository;

  NfcesCubit(this.nfceRepository) : super(const NfcesState.loading()) {
    fetch();
  }

  fetch() async {
    try {
      final nfces = await nfceRepository.buscar();
      emit(NfcesState.data(nfces: nfces, filter: state.filter));
    } on OfflineException {
      emit(NfcesState.offline(filter: state.filter));
    } catch (e) {
      emit(NfcesState.error(
        e.toString(),
        filter: state.filter,
      ));
    }
  }

  Future<bool> adicionarQrCode(String qrCode) async {
    final res = await nfceRepository.adicionarQrCode(qrCode);

    if (res.statusCode != 200) {
      return false;
    }

    if (res.statusCode == 200) {
      fetch();
    }

    return true;
  }

  visualizarProdutos({Nfce? nfce}) {
    emit(state.copyWith.filter(
      visualizacao: Visualizacao.produtos,
      nfce: nfce,
    ));
  }

  visualizarNotas() {
    emit(state.copyWith.filter(
      visualizacao: Visualizacao.notas,
    ));
  }
}
