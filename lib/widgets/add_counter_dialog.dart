import 'package:flutter/material.dart';
import 'package:flutter_responsive/core/constants.dart';
import 'package:flutter_responsive/notifier/counters_notifier.dart';

class AddCounterDialog extends StatelessWidget {
  const AddCounterDialog({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final controller = TextEditingController();

    return Padding(
      padding: const EdgeInsets.all(32),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Expanded(
                child: Text('Add Counter',
                    style: Theme.of(context).textTheme.headlineMedium),
              ),
              IconButton(
                onPressed: () {
                  Navigator.of(context).pop();
                },
                icon: const Icon(Icons.close),
              ),
            ],
          ),
          const SizedBox(height: Spacing.x5),
          TextField(
            controller: controller,
            decoration: const InputDecoration(
              labelText: 'Counter Name',
              border: OutlineInputBorder(),
            ),
          ),
          const SizedBox(height: Spacing.x4),
          Align(
            alignment: Alignment.centerRight,
            child: FilledButton(
              onPressed: () {
                notifier.add(controller.text);
                Navigator.of(context).pop();
              },
              child: const Text('Add'),
            ),
          ),
        ],
      ),
    );
  }
}
