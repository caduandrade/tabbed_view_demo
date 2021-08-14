import 'package:demoflu/demoflu.dart';
import 'package:flutter/material.dart';
import 'package:tabbed_view/tabbed_view.dart';

class TabSelectionListenerExample extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    List<TabData> tabs = [
      TabData(text: 'Tab 1'),
      TabData(text: 'Tab 2'),
      TabData(text: 'Tab 3')
    ];
    TabbedView tabbedView = TabbedView(
        controller: TabbedViewController(tabs),
        onTabSelection: (newTabIndex) {
          DemoFlu.printOnConsole(
              context, 'The new selected tab is $newTabIndex.');
        });
    return tabbedView;
  }
}
