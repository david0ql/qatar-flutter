import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:qatar/src/services/bottom_service.dart';
import 'package:qatar/src/widgets/widgets.dart';

import '../../models/jugadores_response.dart';

class JugadoresTab extends StatelessWidget {
  const JugadoresTab({super.key});

  @override
  Widget build(BuildContext context) {
    final bottomService = Provider.of<BottomService>(context);
    return FutureBuilder(
      future: bottomService.getJugadores(),
      builder: (BuildContext context, AsyncSnapshot snapshot) {
        return ListView.builder(
          itemCount: bottomService.jugadores.length,
          itemBuilder: (BuildContext context, int index) {
            final Jugador jugador = bottomService.jugadores[index];
            return CustomCardJugadores(jugador: jugador);
          },
        );
      },
    );
  }
}
