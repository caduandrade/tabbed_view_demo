import 'package:demoflu/demoflu.dart';
import 'package:flutter/material.dart';
import 'package:tabbed_view/tabbed_view.dart';

class TabsAreaColorExample extends Example {
  @override
  Widget buildMainWidget(BuildContext context) {
    List<TabData> tabs = [TabData(text: 'Tab 1'), TabData(text: 'Tab 2')];

    TabbedViewController controller = TabbedViewController(tabs);

    TabbedView tabbedView = TabbedView(controller: controller);

    TabbedViewThemeData themeData = TabbedViewThemeData.classic();
    themeData.tabsArea.color = Colors.green[100];

    TabbedViewTheme theme = TabbedViewTheme(child: tabbedView, data: themeData);

    return theme;
  }
}
