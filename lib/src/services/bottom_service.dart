import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:qatar/src/models/ganadores_response.dart';
import 'package:qatar/src/models/jugadores_response.dart';
import 'package:qatar/src/models/paises_response.dart';

class BottomService with ChangeNotifier {
  int _selectedIndex = 0;

  final String _baseUrl = "127.0.0.1:9091";

  int get selectedIndex => _selectedIndex;

  set selectedIndex(int value) {
    _selectedIndex = value;
    notifyListeners();
  }

  List<Jugador> jugadores = [];
  List<Ganador> ganadores = [];
  List<Paises> paises = [];
  List<DropdownMenuItem> paisesLista = [];

  Future<int> getJugadores() async {
    jugadores.clear();
    final jugadoresResponse = await http.get(Uri.http(_baseUrl, '/jugadores'));
    final jsonData = jsonDecode(jugadoresResponse.body);
    for (var element in jsonData) {
      jugadores.add(Jugador.fromMap(element));
    }
    return 1;
  }

  Future<int> getGanadores() async {
    ganadores.clear();
    final ganadoresResponse = await http.get(Uri.http(_baseUrl, '/ganador'));
    final jsonData = jsonDecode(ganadoresResponse.body);
    for (var element in jsonData) {
      ganadores.add(Ganador.fromMap(element));
    }
    return 1;
  }

  Future<int> getPaises() async {
    paises.clear();
    paisesLista.clear();
    final paisesResponse = await http.get(Uri.http(_baseUrl, '/paises'));
    final jsonData = jsonDecode(paisesResponse.body);
    for (var element in jsonData) {
      paises.add(Paises.fromMap(element));
      paisesLista.add(DropdownMenuItem(
        value: [element["nombre"], element["id_pais"]].toList(),
        child: Text(element["nombre"]),
      ));
    }
    return 1;
  }

  Future<void> insertContienda(String valor) async {
    await http.post(Uri.http(_baseUrl, '/contiendas/$valor'));
  }
}
