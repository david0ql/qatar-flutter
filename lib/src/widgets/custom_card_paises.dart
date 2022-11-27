import 'package:flutter/material.dart';
import 'package:qatar/src/models/paises_response.dart';

class CustomCardPaises extends StatelessWidget {
  final Paises pais;
  const CustomCardPaises({super.key, required this.pais});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 30),
      child: Card(
        elevation: 7,
        child: Column(
          children: [
            Text("Pais: ${pais.nombre}"),
          ],
        ),
      ),
    );
  }
}
