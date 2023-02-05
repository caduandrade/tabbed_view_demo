import 'package:demoflu/demoflu.dart';
import 'package:flutter/material.dart';
import 'package:tabbed_view/tabbed_view.dart';

class TabCloseInterceptorExample extends Example {
  @override
  Widget buildMainWidget(BuildContext context) {
    bool _tabCloseInterceptor(int tabIndex) {
      if (tabIndex == 0) {
        DemoFlu.printOnConsole(
            context, 'The tab $tabIndex is busy and cannot be closed.');
        return false;
      }
      return true;
    }

    List<TabData> tabs = [
      TabData(text: 'Tab 1'),
      TabData(text: 'Tab 2'),
      TabData(text: 'Tab 3')
    ];
    TabbedView tabbedView = TabbedView(
        controller: TabbedViewController(tabs),
        tabCloseInterceptor: _tabCloseInterceptor);
    return tabbedView;
  }
}
