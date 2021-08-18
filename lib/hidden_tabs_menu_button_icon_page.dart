import 'package:flutter/material.dart';
import 'package:tabbed_view/tabbed_view.dart';

import 'example_page.dart';

class HiddenTabsMenuButtonIconPage extends StatefulWidget {
  @override
  HiddenTabsMenuButtonIconPageState createState() =>
      HiddenTabsMenuButtonIconPageState();
}

class HiddenTabsMenuButtonIconPageState extends ExamplePageState {
  @override
  Widget buildContent() {
    List<TabData> tabs = [];
    for (var i = 1; i < 7; i++) {
      tabs.add(TabData(text: 'Tab $i'));
    }
    TabbedViewController controller = TabbedViewController(tabs);
    TabbedView tabbedView = TabbedView(controller: controller);

    TabbedViewThemeData themeData = TabbedViewThemeData.classic()
      ..tabsArea.buttonsArea.hiddenTabsMenuButtonIcon =
          Icons.arrow_drop_down_circle_outlined;

    TabbedViewTheme theme = TabbedViewTheme(child: tabbedView, data: themeData);

    return theme;
  }
}
