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
  final TabbedViewController _controller = TabbedViewController([
    TabData(id: 'tab1', text: 'Tab 1'),
    TabData(id: 'tab2', text: 'Tab 2'),
    TabData(id: 'tab3', text: 'Tab 3')
  ], onTabSelected: (TabSelection? selection) {
    if (selection == null) {
      print('selection cleared');
    } else {
      print('${selection.tab.text} selected');
    }
  });
  //@demoflu_end:example

  @override
  Widget build(BuildContext context) {
    return TabbedView(controller: _controller);
  }
}
