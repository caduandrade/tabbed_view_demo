import 'package:flutter/material.dart';
import 'package:tabbed_view/tabbed_view.dart';

class MenuMaxWidthExample extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    List<TabData> tabs = [];
    for (int i = 1; i < 11; i++) {
      tabs.add(TabData(text: 'Tab $i'));
    }
    TabbedViewController controller = TabbedViewController(tabs);

    TabbedView tabbedView = TabbedView(controller: controller);

    TabbedViewThemeData themeData = TabbedViewThemeData.classic()
      ..menu.maxWidth = 100;
    TabbedViewTheme theme = TabbedViewTheme(child: tabbedView, data: themeData);

    return theme;
  }

}
