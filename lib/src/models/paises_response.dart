import 'dart:convert';

class Paises {
  Paises({
    required this.idPais,
    required this.nombre,
  });

  int idPais;
  String nombre;

  factory Paises.fromJson(String str) => Paises.fromMap(json.decode(str));

  factory Paises.fromMap(Map<String, dynamic> json) => Paises(
        idPais: json["id_pais"],
        nombre: json["nombre"],
      );
}
