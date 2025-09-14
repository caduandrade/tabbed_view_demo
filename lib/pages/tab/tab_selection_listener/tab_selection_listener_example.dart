import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:tabbed_view/tabbed_view.dart';

class TabSelectionListenerExample extends StatefulWidget {
  const TabSelectionListenerExample({super.key});

  @override
  State<StatefulWidget> createState() => TabSelectionListenerExampleState();
}

class TabSelectionListenerExampleState
    extends State<TabSelectionListenerExample> {
  //@demoflu_start:example
  final TabbedViewController _controller = TabbedViewController(
      [TabData(text: 'Tab 1'), TabData(text: 'Tab 2'), TabData(text: 'Tab 3')],
      onTabSelection: (int? tabIndex, TabData? tabData) {
    if (tabData == null) {
      print('selection cleared');
    } else {
      print('${tabData.text} selected');
    }
  });
  //@demoflu_end:example

  @override
  Widget build(BuildContext context) {
    return TabbedView(controller: _controller);
  }
}
