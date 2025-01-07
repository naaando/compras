import 'dart:convert';

import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:shared_preferences/shared_preferences.dart';

part 'user.g.dart';

@JsonSerializable()
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

  // restore
  static Future<User> restore() async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    final userJson = prefs.getString('user');

    if (userJson == null) {
      return User();
    }

    return User.fromJson(
      jsonDecode(userJson),
    );
  }

  set({
    required id,
    required name,
    required email,
    required picture,
    required token,
  }) {
    this.id = id;
    this.name = name;
    this.email = email;
    this.picture = picture;
    this.token = token;

    _save();
    notifyListeners();
  }

  _save() async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();

    await prefs.setString('user', jsonEncode(this));
  }

  /// Connect the generated [_$UserFromJson] function to the `fromJson`
  /// factory.
  factory User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);

  /// Connect the generated [_$UserToJson] function to the `toJson` method.
  Map<String, dynamic> toJson() => _$UserToJson(this);
}
