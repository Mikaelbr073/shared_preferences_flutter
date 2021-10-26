import 'dart:convert';

import 'package:flutter/cupertino.dart';

class Pessoa {
  final String nome, idade, endereco;

  Pessoa({required this.nome, required this.idade, required this.endereco});

  factory Pessoa.fromJson(Map<String, dynamic> json) {
    return Pessoa(
        nome: json['nome'], idade: json['idade'], endereco: json['endereco']);
  }

  static Map<String, dynamic> toMap(Pessoa p) =>
      {'nome': p.nome, 'idade': p.idade, 'endereco': p.endereco};

  /* static String encode(List<Pessoa> pessoas) => json.encode(
        pessoas
            .map<Map<String, dynamic>>((pessoa) => Pessoa.toMap(pessoa))
            .toList(),
            
      );*/

  /*static List<Pessoa> decode(String pessoas) =>
      (json.decode(pessoas) as List<dynamic>)
          .map<Pessoa>((e) => Pessoa.fromJson(e))
          .toList();*/
}
