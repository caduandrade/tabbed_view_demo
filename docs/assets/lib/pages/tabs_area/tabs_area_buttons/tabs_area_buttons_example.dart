import 'package:flutter/material.dart';
import 'package:tabbed_view/tabbed_view.dart';

class TabsAreaButtonsExample extends StatefulWidget {
  const TabsAreaButtonsExample({super.key});

  @override
  State<StatefulWidget> createState() => TabsAreaButtonsExampleState();
}

class TabsAreaButtonsExampleState extends State<TabsAreaButtonsExample> {
  final TabbedViewController _controller = TabbedViewController(
      [TabData(text: 'Tab 1'), TabData(text: 'Tab 2'), TabData(text: 'Tab 3')]);

  @override
  Widget build(BuildContext context) {
    //@demoflu_start:example
    return TabbedView(
        controller: _controller,
        tabsAreaButtonsBuilder: (context, tabsCount) {
          List<TabButton> buttons = [];
          buttons
              .add(TabButton.icon(IconProvider.data(Icons.add), onPressed: () {
            int millisecond = DateTime.now().millisecondsSinceEpoch;
            _controller.addTab(TabData(text: '$millisecond'));
          }));
          if (tabsCount > 0) {
            buttons.add(
                TabButton.icon(IconProvider.data(Icons.delete), onPressed: () {
              final int? selectedIndex = _controller.selectedIndex;
              if (selectedIndex != null) {
                _controller.removeTab(selectedIndex);
              }
            }));
          }
          return buttons;
        });
    //@demoflu_end:example
  }
}
