import 'package:flutter/material.dart';

class ColorChooser extends StatelessWidget {
  ColorChooser({super.key, required this.title, required this.color});

  final String title;
  final ValueNotifier<Color?> color;
  final List<Color> colors = [
    Colors.blueGrey,
    Colors.brown,
    Colors.teal,
    Colors.green,
    Colors.blue,
    Colors.purple,
    Colors.orange
  ];

  @override
  Widget build(BuildContext context) {
    return ListenableBuilder(
        listenable: color,
        builder: (BuildContext context, Widget? child) {
          List<Widget> options = [];
          options.add(ChoiceChip(
              label: Text('Default'),
              selected: color.value == null,
              onSelected: (selected) => color.value = null));
          for (Color value in colors) {
            options.add(ChoiceChip(
                showCheckmark: false,
                label: SizedBox(
                    width: 40,
                    height: 40,
                    child: Center(
                      child: color.value == value
                          ? Icon(
                              Icons.check,
                              color: value.computeLuminance() > 0.5
                                  ? Colors.black
                                  : Colors.white,
                              size: 24,
                            )
                          : null,
                    )),
                shape: const CircleBorder(),
                selectedColor: value,
                labelPadding: EdgeInsets.zero,
                padding: EdgeInsets.zero,
                backgroundColor: value,
                selected: color.value == value,
                onSelected: (selected) => color.value = value));
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
