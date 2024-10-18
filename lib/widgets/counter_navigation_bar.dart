import 'package:flutter/material.dart';
import 'package:flutter_responsive/models/models.dart';
import 'package:flutter_responsive/notifier/counters_notifier.dart';

class CounterNavigationBar extends StatelessWidget {
  const CounterNavigationBar({super.key});

  @override
  Widget build(BuildContext context) {
    return ListenableBuilder(
      listenable: notifier,
      builder: (_, __) {
        return NavigationBar(
          onDestinationSelected: (value) => notifier.selectDestination(value),
          selectedIndex: notifier.selectedNavigationIndex,
          destinations: CounterNavigationDestination.navigationDestinations
              .map(
                (destination) => NavigationDestination(
                  icon: destination.icon,
                  label: destination.label,
                ),
              )
              .toList(),
        );
      },
    );
  }
}
