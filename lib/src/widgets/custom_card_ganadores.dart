import 'package:flutter/material.dart';
import 'package:qatar/src/models/ganadores_response.dart';

class CustomCardGanadores extends StatelessWidget {
  final Ganador ganador;
  const CustomCardGanadores({super.key, required this.ganador});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 30),
      child: Card(
        elevation: 7,
        child: Column(
          children: [
            Text("Partidos Ganados: ${ganador.cantidad}"),
            Text("Pais: ${ganador.nombre}"),
          ],
        ),
      ),
    );
  }
}
