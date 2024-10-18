import 'package:flutter/material.dart';

class CounterNavigationDestination {
  final String label;
  final Icon icon;

  CounterNavigationDestination({
    required this.icon,
    required this.label,
  });

  static final List<CounterNavigationDestination> navigationDestinations = [
    CounterNavigationDestination(
      icon: const Icon(Icons.list),
      label: 'Counters',
    ),
    CounterNavigationDestination(
      icon: const Icon(Icons.settings),
      label: 'Settings',
    ),
  ];
}
