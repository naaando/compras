import 'dart:convert';

import 'package:app_compras/config.dart';
import 'package:app_compras/database/database.dart';
import 'package:app_compras/nfce/exceptions/offline_exception.dart';
import 'package:app_compras/nfce/models/nfce.dart';
import 'package:http/http.dart' as http;

class NfceRepository {
  late final http.Client client;

  NfceRepository(AppDatabase database) {
    client = http.Client();
  }

  Future<List<Nfce>> buscar() async {
    final url = Config.serverHost.resolve('api/nfce');

    try {
      final res = await client.get(url, headers: {
        'Content-Type': 'application/json',
        'Accept': 'application/json',
      });

      if (res.statusCode == 200) {
        final json = jsonDecode(res.body) as List;
        final nfces = json.map<Nfce>((item) {
          if (item['company_name'] == null) {
            return NfceProcessing.fromJson(item);
          }

          return NfceProcessed.fromJson(item);
        }).toList();
        return nfces;
      }

      throw Exception('Erro ao buscar notas fiscais / ${res.body.toString()}');
    } on http.ClientException catch (e) {
      throw OfflineException(e.message);
    }
  }

  Future<http.Response> adicionarQrCode(String nfceUrl) async {
    final url = Config.serverHost.resolve('api/nfce');

    return await client.post(
      url,
      headers: {
        'Content-Type': 'application/json',
        'Accept': 'application/json',
      },
      body: jsonEncode({
        'url': nfceUrl,
      }),
    );
  }

  // void salvar(String nfceUrl, String html) async {
  //   final url = Uri.http(Config.serverHost, 'api/nfce');

  //   await client.post(url, body: {
  //     url: nfceUrl,
  //     html: html,
  //   });
  // }
}
