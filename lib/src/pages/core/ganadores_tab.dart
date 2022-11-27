import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:qatar/src/models/ganadores_response.dart';
import 'package:qatar/src/widgets/custom_card_ganadores.dart';

import '../../services/bottom_service.dart';

class GanadoresTab extends StatelessWidget {
  const GanadoresTab({super.key});

  @override
  Widget build(BuildContext context) {
    final bottomService = Provider.of<BottomService>(context);
    return FutureBuilder(
      future: bottomService.getGanadores(),
      builder: (BuildContext context, AsyncSnapshot snapshot) {
        return ListView.builder(
          itemCount: bottomService.ganadores.length,
          itemBuilder: (BuildContext context, int index) {
            final Ganador ganador = bottomService.ganadores[index];
            return CustomCardGanadores(ganador: ganador);
          },
        );
      },
    );
  }
}
