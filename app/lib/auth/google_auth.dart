import 'dart:convert';

import 'package:app_compras/config.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:http/http.dart';

import 'user.dart';

class GoogleAuth {
  late final GoogleSignIn _googleSignIn;
  Client _client = Client();

  GoogleAuth() {
    _googleSignIn = GoogleSignIn(
        serverClientId:
            '17545749005-s1c45ojjc09ds63nb3f0r0i2dii7023d.apps.googleusercontent.com',
        scopes: [
          'email',
          'https://www.googleapis.com/auth/userinfo.profile',
          'https://www.googleapis.com/auth/userinfo.email',
        ]);
  }

  @override
  Future<void> login(User user) async {
    try {
      GoogleSignInAccount? account = await _googleSignIn.signIn();
      GoogleSignInAuthentication auth = await account!.authentication;
      var userAndToken = await _exchangeIdTokenWithSanctumToken(auth.idToken);

      user.id = userAndToken['user']['id'];
      user.name = userAndToken['user']['name'];
      user.email = userAndToken['user']['email'];
      user.picture = userAndToken['user']['picture'];
      user.token = userAndToken['token'];
      user.update();
    } catch (error) {
      print(error);
      rethrow;
    }
  }

  _exchangeIdTokenWithSanctumToken(String? idToken) async {
    final url = Config.serverHost.resolve('api/auth/google');

    Response res = await _client.get(url, headers: {
      'Authorization': 'Bearer $idToken',
      'Content-Type': 'application/json',
      'Accept': 'application/json',
    });

    return jsonDecode(res.body);
  }
}
