import 'package:flutter/material.dart';

class DoubleChooser extends StatelessWidget {
  DoubleChooser(
      {super.key,
      required this.title,
      required this.value,
      required this.values});

  final String title;
  final ValueNotifier<double?> value;
  final List<double> values;

  @override
  Widget build(BuildContext context) {
    return ListenableBuilder(
        listenable: value,
        builder: (BuildContext context, Widget? child) {
          List<Widget> options = [];
          options.add(ChoiceChip(
              label: Text('Default'),
              selected: value.value == null,
              onSelected: (selected) => value.value = null));
          for (double v in values) {
            options.add(ChoiceChip(
                label: Text('$v'),
                selected: value.value == v,
                onSelected: (selected) => value.value = v));
          }
          return Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(title),
                Wrap(spacing: 8, runSpacing: 4, children: options)
              ]);
        });
  }
}
