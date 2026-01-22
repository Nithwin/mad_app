import 'package:flutter/material.dart';
import 'package:mad_app/data/notifiers.dart';

class Navigation extends StatelessWidget {
  const Navigation({super.key});

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
      valueListenable: selectedPageNotifier,
      builder: (context, value, child) {
        return NavigationBar(
          destinations: [
            NavigationDestination(icon: Icon(Icons.home), label: "Home"),
            NavigationDestination(icon: Icon(Icons.person), label: "Profile"),
          ],
          selectedIndex: value,
          onDestinationSelected: (int index) {
            selectedPageNotifier.value = index;
          },
        );
      },
    );
  }
}
