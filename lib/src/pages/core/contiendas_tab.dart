// ignore_for_file: use_build_context_synchronously

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../services/bottom_service.dart';

class ContiendasTab extends StatefulWidget {
  const ContiendasTab({super.key});

  @override
  State<ContiendasTab> createState() => _ContiendasTabState();
}

class _ContiendasTabState extends State<ContiendasTab> {
  String hint = "Selecciona una opcion";
  String idPais = "";
  @override
  Widget build(BuildContext context) {
    final bottomService = Provider.of<BottomService>(context);
    return FutureBuilder(
      future: bottomService.getPaises(),
      builder: (BuildContext context, AsyncSnapshot snapshot) {
        return Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              DropdownButton(
                hint: Text(hint),
                items: bottomService.paisesLista,
                onChanged: (value) {
                  hint = value[0];
                  idPais = value[1].toString();
                  setState(() {});
                },
              ),
              ElevatedButton(
                onPressed: () async {
                  await bottomService.insertContienda(idPais);
                  ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
                    content: Text('Equipo enviado'),
                  ));
                  await Future.delayed(const Duration(milliseconds: 700));
                  bottomService.selectedIndex = 1;
                },
                child: const Text("Enviar ganador"),
              )
            ],
          ),
        );
      },
    );
  }
}
