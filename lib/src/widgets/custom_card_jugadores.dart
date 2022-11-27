import 'package:flutter/material.dart';
import 'package:qatar/src/models/jugadores_response.dart';

class CustomCardJugadores extends StatelessWidget {
  final Jugador jugador;
  const CustomCardJugadores({super.key, required this.jugador});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 30),
      child: Card(
        elevation: 7,
        child: Column(
          children: [
            SizedBox(
              height: 300,
              child: Image(
                image: NetworkImage(jugador.foto),
                fit: BoxFit.contain,
              ),
            ),
            Text("Nombre: ${jugador.nombreJugador}"),
            Text("Pais: ${jugador.nombrePais}"),
          ],
        ),
      ),
    );
  }
}
