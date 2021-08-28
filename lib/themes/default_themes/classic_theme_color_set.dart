import 'package:flutter/material.dart';
import 'package:tabbed_view/tabbed_view.dart';

class ClassicThemeColorSetExample extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    List<TabData> tabs = [];
    for (var i = 1; i < 7; i++) {
      tabs.add(TabData(
          text: 'Tab $i',
          content: Center(
              child:
                  Text('Content $i', style: TextStyle(color: Colors.white)))));
    }
    TabbedViewController controller = TabbedViewController(tabs);

    TabbedView tabbedView = TabbedView(controller: controller);

    TabbedViewTheme theme = TabbedViewTheme(
        child: tabbedView,
        data: TabbedViewThemeData.classic(colorSet: Colors.green));

    return theme;
  }
}
