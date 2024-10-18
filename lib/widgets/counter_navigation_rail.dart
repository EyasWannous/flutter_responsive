import 'package:flutter/material.dart';
import 'package:flutter_responsive/models/models.dart';
import 'package:flutter_responsive/notifier/counters_notifier.dart';

class CounterNavigationRail extends StatelessWidget {
  const CounterNavigationRail({super.key});

  @override
  Widget build(BuildContext context) {
    return ListenableBuilder(
      listenable: notifier,
      builder: (context, _) {
        return NavigationRail(
          onDestinationSelected: (value) => notifier.selectDestination(value),
          labelType: NavigationRailLabelType.all,
          destinations: CounterNavigationDestination.navigationDestinations
              .map(
                (destination) => NavigationRailDestination(
                  icon: destination.icon,
                  label: Text(destination.label),
                ),
              )
              .toList(),
          selectedIndex: notifier.selectedNavigationIndex,
        );
      },
    );
  }
}
