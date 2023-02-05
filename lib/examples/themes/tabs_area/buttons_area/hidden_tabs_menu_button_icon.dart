import 'package:demoflu/demoflu.dart';
import 'package:flutter/material.dart';
import 'package:tabbed_view/tabbed_view.dart';

class HiddenTabsMenuButtonIconExample extends Example {
  @override
  Widget buildMainWidget(BuildContext context) {
    List<TabData> tabs = [];
    for (var i = 1; i < 7; i++) {
      tabs.add(TabData(text: 'Tab $i'));
    }
    TabbedViewController controller = TabbedViewController(tabs);

    TabbedView tabbedView = TabbedView(controller: controller);

    TabbedViewThemeData themeData = TabbedViewThemeData.classic()
      ..tabsArea.menuIcon =
          IconProvider.data(Icons.arrow_drop_down_circle_outlined);

    TabbedViewTheme theme = TabbedViewTheme(child: tabbedView, data: themeData);

    return theme;
  }
}
