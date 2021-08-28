import 'package:flutter/material.dart';
import 'package:tabbed_view/tabbed_view.dart';

class TabTextStyleExample extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var tabs = [
      TabData(text: 'Tab 1'),
      TabData(text: 'Tab 2'),
    ];

    TabbedView tabbedView = TabbedView(controller: TabbedViewController(tabs));

    TabbedViewThemeData themeData = TabbedViewThemeData.classic()
      ..tabsArea.tab.textStyle = TextStyle(fontSize: 20, color: Colors.blue);
    TabbedViewTheme theme = TabbedViewTheme(child: tabbedView, data: themeData);

    return theme;
  }
}
