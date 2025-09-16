import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:tabbed_view/tabbed_view.dart';

class TabRemoveListenerExample extends StatefulWidget {
  const TabRemoveListenerExample({super.key});

  @override
  State<StatefulWidget> createState() => TabRemoveListenerExampleState();
}

class TabRemoveListenerExampleState extends State<TabRemoveListenerExample> {
  //@demoflu_start:example
  final TabbedViewController _controller = TabbedViewController(
      [TabData(text: 'Tab 1'), TabData(text: 'Tab 2'), TabData(text: 'Tab 3')],
      onTabRemove: (TabData tabData) => print('${tabData.text} removed'));
  //@demoflu_end:example

  @override
  Widget build(BuildContext context) {
    return TabbedView(controller: _controller);
  }
}
