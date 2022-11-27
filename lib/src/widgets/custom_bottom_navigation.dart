import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:qatar/src/services/bottom_service.dart';

class CustomBottomNavigation extends StatelessWidget {
  const CustomBottomNavigation({super.key});

  @override
  Widget build(BuildContext context) {
    final bottomSerice = Provider.of<BottomService>(context);
    return BottomNavigationBar(
      type: BottomNavigationBarType.fixed,
      currentIndex: bottomSerice.selectedIndex,
      onTap: (value) {
        bottomSerice.selectedIndex = value;
      },
      items: const [
        BottomNavigationBarItem(
            icon: Icon(Icons.play_circle_filled_outlined), label: 'Jugadores'),
        BottomNavigationBarItem(
            icon: Icon(Icons.wifi_channel_rounded), label: 'Ganadores'),
        BottomNavigationBarItem(
            icon: Icon(Icons.account_tree_rounded), label: 'Paises'),
        BottomNavigationBarItem(
            icon: Icon(Icons.flight_land), label: 'Contiendas'),
      ],
    );
  }
}
