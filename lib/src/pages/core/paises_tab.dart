import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:qatar/src/models/paises_response.dart';
import 'package:qatar/src/widgets/custom_card_paises.dart';

import '../../services/bottom_service.dart';

class PaisesTab extends StatelessWidget {
  const PaisesTab({super.key});

  @override
  Widget build(BuildContext context) {
    final bottomService = Provider.of<BottomService>(context);
    return FutureBuilder(
      future: bottomService.getPaises(),
      builder: (BuildContext context, AsyncSnapshot snapshot) {
        return ListView.builder(
          itemCount: bottomService.paises.length,
          itemBuilder: (BuildContext context, int index) {
            final Paises pais = bottomService.paises[index];
            return CustomCardPaises(pais: pais);
          },
        );
      },
    );
  }
}
