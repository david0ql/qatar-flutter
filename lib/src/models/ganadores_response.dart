import 'dart:convert';

class Ganador {
  Ganador({
    required this.cantidad,
    required this.nombre,
    required this.idContienda,
  });

  int cantidad;
  String nombre;
  int idContienda;

  factory Ganador.fromJson(String str) => Ganador.fromMap(json.decode(str));

  factory Ganador.fromMap(Map<String, dynamic> json) => Ganador(
        cantidad: json["cantidad"],
        nombre: json["nombre"],
        idContienda: json["id_contienda"],
      );
}
