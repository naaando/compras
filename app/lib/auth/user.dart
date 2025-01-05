import 'package:flutter/foundation.dart';

class User extends ChangeNotifier {
  int? id;
  String? name;
  String? email;
  String? picture;
  String? token;
  bool get isAuthenticated => token != null;

  User({
    this.id,
    this.name,
    this.email,
    this.picture,
    this.token,
  });

  update() {
    notifyListeners();
  }
}
