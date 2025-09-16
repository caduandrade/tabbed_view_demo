import 'package:flutter/material.dart';

class ColorSetChooser extends StatelessWidget {
  ColorSetChooser({super.key, required this.title, required this.colorSet});

  final String title;
  final ValueNotifier<MaterialColor?> colorSet;
  final List<MaterialColor> colors = [
    Colors.grey,
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
        listenable: colorSet,
        builder: (BuildContext context, Widget? child) {
          List<Widget> options = [];
          options.add(ChoiceChip(
              label: Text('Default'),
              selected: colorSet.value == null,
              onSelected: (selected) => colorSet.value = null));
          for (MaterialColor value in colors) {
            options.add(ChoiceChip(
                showCheckmark: false,
                label: SizedBox(
                    width: 40,
                    height: 40,
                    child: Center(
                      child: colorSet.value == value
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
                selected: colorSet.value == value,
                onSelected: (selected) => colorSet.value = value));
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
