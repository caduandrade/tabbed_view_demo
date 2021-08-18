import 'package:flutter/material.dart';
import 'package:tabbed_view/tabbed_view.dart';

import 'example_multi_view_page.dart';

class ClassicThemePage extends StatefulWidget {
  @override
  ClassicThemePageState createState() => ClassicThemePageState();
}

enum _View { normal, change_color }

class ClassicThemePageState extends ExampleMultiViewPageState<_View> {
  @override
  _View defaultView() {
    return _View.normal;
  }

  @override
  List<Widget> buildExampleWidgets() {
    return [
      buttonView('Normal', _View.normal),
      buttonView('Change color', _View.change_color)
    ];
  }

  @override
  Widget buildContentView(_View currentView) {
    switch (currentView) {
      case _View.normal:
        return _normal();
      case _View.change_color:
        return _changeColor();
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

  Widget _normal() {
    TabbedViewController controller = _tabbedViewController();
    TabbedView tabbedView = TabbedView(controller: controller);

    TabbedViewTheme theme =
        TabbedViewTheme(child: tabbedView, data: TabbedViewThemeData.classic());

    return theme;
  }

  Widget _changeColor() {
    TabbedViewController controller = _tabbedViewController();
    TabbedView tabbedView = TabbedView(controller: controller);

    TabbedViewTheme theme = TabbedViewTheme(
        child: tabbedView,
        data: TabbedViewThemeData.classic(colorSet: Colors.green));

    return theme;
  }
}
