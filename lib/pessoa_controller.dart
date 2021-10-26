import 'package:shared_pref/pessoa.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'dart:convert';

class PessoaCtrl {
  add(String key, value) async {
    final prefs = await SharedPreferences.getInstance();
    prefs.setString(key, value);
  }

  read(String key) async {
    final prefs = await SharedPreferences.getInstance();

    return json.decode(prefs.getString(key).toString());
  }

  remove(String key) async {
    final prefs = await SharedPreferences.getInstance();
    prefs.remove(key);
  }
}
