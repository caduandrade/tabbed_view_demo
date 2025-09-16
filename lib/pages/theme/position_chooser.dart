import 'package:flutter/material.dart';
import 'package:tabbed_view/tabbed_view.dart';

class PositionChooser extends StatelessWidget {
  const PositionChooser({super.key, required this.position});

  final ValueNotifier<TabBarPosition> position;

  @override
  Widget build(BuildContext context) {
    return ListenableBuilder(
        listenable: position,
        builder: (BuildContext context, Widget? child) {
          List<Widget> options = TabBarPosition.values.map<Widget>((value) {
            return ChoiceChip(
                label: Text(value.name),
                selected: position.value == value,
                onSelected: (selected) => position.value = value);
          }).toList();
          return Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('TabBarPosition'),
                Wrap(spacing: 8, runSpacing: 4, children: options)
              ]);
        });
  }
}
