import 'package:flutter/material.dart';
import 'package:tabbed_view/tabbed_view.dart';

import 'example_multi_view_page.dart';

class TabsAreaThemePage extends StatefulWidget {
  @override
  TabsAreaThemePageState createState() => TabsAreaThemePageState();
}

enum _View { gaps }

class TabsAreaThemePageState extends ExampleMultiViewPageState<_View> {
  @override
  _View defaultView() {
    return _View.gaps;
  }

  @override
  List<Widget> buildExampleWidgets() {
    return [buttonView('Gaps', _View.gaps)];
  }

  @override
  Widget buildContentView(_View currentView) {
    switch (currentView) {
      case _View.gaps:
        return _gaps();
    }
  }

  TabbedViewController _tabbedViewController() {
    List<TabData> tabs = [];
    for (var i = 1; i < 7; i++) {
      tabs.add(
          TabData(text: 'Tab $i', content: Center(child: Text('Content $i'))));
    }
    return TabbedViewController(tabs);
  }

  Widget _gaps() {
    TabbedViewController controller = _tabbedViewController();

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
