import 'dart:convert';

class Jugador {
  Jugador({
    required this.nombreJugador,
    required this.foto,
    required this.nombrePais,
  });

  String nombreJugador;
  String foto;
  String nombrePais;

  factory Jugador.fromJson(String str) => Jugador.fromMap(json.decode(str));

  factory Jugador.fromMap(Map<String, dynamic> json) => Jugador(
        nombreJugador: json["nombreJugador"],
        foto: json["foto"],
        nombrePais: json["nombrePais"],
      );
}
