import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:qatar/src/pages/core/core.dart';
import 'package:qatar/src/services/bottom_service.dart';
import 'package:qatar/src/widgets/custom_bottom_navigation.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Qatar"),
        centerTitle: true,
      ),
      body: const HomeSwitch(),
      bottomNavigationBar: const CustomBottomNavigation(),
    );
  }
}

class HomeSwitch extends StatelessWidget {
  const HomeSwitch({super.key});

  @override
  Widget build(BuildContext context) {
    final bottomService = Provider.of<BottomService>(context);
    switch (bottomService.selectedIndex) {
      case 0:
        return const JugadoresTab();
      case 1:
        return const GanadoresTab();
      case 2:
        return const PaisesTab();
      case 3:
        return const ContiendasTab();
      default:
        return const JugadoresTab();
    }
  }
}
