import 'package:flutter/material.dart';
import 'package:tabbed_view/tabbed_view.dart';

class TabCloseInterceptorExample extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    bool _tabCloseInterceptor(int tabIndex) {
      if (tabIndex == 0) {
        print('The tab $tabIndex is busy and cannot be closed.');
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
