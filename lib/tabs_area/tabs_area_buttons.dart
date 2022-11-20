import 'package:demoflu/demoflu.dart';
import 'package:flutter/material.dart';
import 'package:tabbed_view/tabbed_view.dart';

class TabsAreaButtonsExample extends Example {
  @override
  Widget buildMainWidget(BuildContext context) {
    TabbedViewController controller = TabbedViewController([]);

    TabbedView tabbedView = TabbedView(
        controller: controller,
        tabsAreaButtonsBuilder: (context, tabsCount) {
          List<TabButton> buttons = [];
          buttons.add(TabButton(
              icon: IconProvider.data(Icons.add),
              onPressed: () {
                int millisecond = DateTime.now().millisecondsSinceEpoch;
                controller.addTab(TabData(text: '$millisecond'));
              }));
          if (tabsCount > 0) {
            buttons.add(TabButton(
                icon: IconProvider.data(Icons.delete),
                onPressed: () {
                  if (controller.selectedIndex != null) {
                    controller.removeTab(controller.selectedIndex!);
                  }
                }));
          }
          return buttons;
        });

    return tabbedView;
  }
}
