import 'package:demoflu/demoflu.dart';
import 'package:flutter/material.dart';
import 'package:tabbed_view/tabbed_view.dart';

class TabTextStyleExample extends Example {
  @override
  Widget buildMainWidget(BuildContext context) {
    var tabs = [
      TabData(text: 'Tab 1'),
      TabData(text: 'Tab 2'),
    ];

    TabbedView tabbedView = TabbedView(controller: TabbedViewController(tabs));

    TabbedViewThemeData themeData = TabbedViewThemeData.classic()
      ..tab.textStyle = TextStyle(fontSize: 20, color: Colors.blue);
    TabbedViewTheme theme = TabbedViewTheme(child: tabbedView, data: themeData);

    return theme;
  }
}
