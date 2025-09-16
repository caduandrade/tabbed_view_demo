import 'package:flutter/material.dart';

class BrightnessChooser extends StatelessWidget {
  const BrightnessChooser({super.key, required this.brightness});

  final ValueNotifier<Brightness> brightness;

  @override
  Widget build(BuildContext context) {
    return ListenableBuilder(
        listenable: brightness,
        builder: (BuildContext context, Widget? child) {
          List<Widget> options = Brightness.values.map<Widget>((value) {
            return ChoiceChip(
                label: Text(value.name),
                selected: brightness.value == value,
                onSelected: (selected) => brightness.value = value);
          }).toList();
          return Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Brightness'),
                Wrap(spacing: 8, runSpacing: 4, children: options)
              ]);
        });
  }
}
