import 'package:flutter/material.dart';
import 'package:tabbed_view/tabbed_view.dart';

class MobileThemeColorSetExample extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    List<TabData> tabs = [];
    for (var i = 1; i < 7; i++) {
      tabs.add(
          TabData(text: 'Tab $i', content: Center(child: Text('Content $i'))));
    }
    TabbedViewController controller = TabbedViewController(tabs);

    TabbedView tabbedView = TabbedView(controller: controller);

    TabbedViewTheme theme = TabbedViewTheme(
        child: tabbedView,
        data: TabbedViewThemeData.mobile(colorSet: Colors.blueGrey));
    return theme;
  }
}
