import 'package:flutter/material.dart';
import 'package:tabbed_view/tabbed_view.dart';

class TabCloseListenerExample extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    List<TabData> tabs = [
      TabData(text: 'Tab 1'),
      TabData(text: 'Tab 2'),
      TabData(text: 'Tab 3')
    ];
    TabbedView tabbedView = TabbedView(
        controller: TabbedViewController(tabs),
        onTabClose: (index, tabData) {
          print('$index: ' + tabData.text);
        });
    return tabbedView;
  }
}
