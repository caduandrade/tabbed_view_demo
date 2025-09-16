import 'package:flutter/material.dart';
import 'package:tabbed_view/tabbed_view.dart';

class SideTabsLayoutChooser extends StatelessWidget {
  const SideTabsLayoutChooser(
      {super.key, required this.layout, required this.position});

  final ValueNotifier<TabBarPosition> position;
  final ValueNotifier<SideTabsLayout> layout;

  @override
  Widget build(BuildContext context) {
    return ListenableBuilder(
        listenable: Listenable.merge([position, layout]),
        builder: (BuildContext context, Widget? child) {
          List<Widget> options = SideTabsLayout.values.map<Widget>((value) {
            return ChoiceChip(
                label: Text(value.name),
                selected: layout.value == value,
                onSelected: position.value.isVertical
                    ? (selected) => layout.value = value
                    : null);
          }).toList();
          return Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('SideTabsLayout'),
                Wrap(spacing: 8, runSpacing: 4, children: options)
              ]);
        });
  }
}
