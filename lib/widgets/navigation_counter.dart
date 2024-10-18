import 'package:flutter/material.dart';
import 'package:flutter_responsive/notifier/counters_notifier.dart';
import 'package:flutter_responsive/pages/settings_page.dart';

class NavigationCounter extends StatelessWidget {
  final Widget child;
  const NavigationCounter({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    return ListenableBuilder(
      listenable: notifier,
      builder: (_, __) {
        return IndexedStack(
          index: notifier.selectedNavigationIndex,
          children: [
            child,
            const SettingsPage(),
          ],
        );
      },
    );
  }
}
