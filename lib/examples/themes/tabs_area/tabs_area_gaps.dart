import 'package:demoflu/demoflu.dart';
import 'package:flutter/material.dart';
import 'package:tabbed_view/tabbed_view.dart';

class TabsAreaGapsPage extends Example {
  @override
  Widget buildMainWidget(BuildContext context) {
    List<TabData> tabs = [
      TabData(text: 'Tab 1'),
      TabData(text: 'Tab 2'),
      TabData(text: 'Tab 3')
    ];
    TabbedViewController controller = TabbedViewController(tabs);

    TabbedView tabbedView = TabbedView(controller: controller);

    TabbedViewThemeData themeData = TabbedViewThemeData.classic();
    themeData.tabsArea
      ..initialGap = 20
      ..middleGap = 5
      ..minimalFinalGap = 5;

    TabbedViewTheme theme = TabbedViewTheme(child: tabbedView, data: themeData);

    return theme;
  }
}
