import 'dart:async';

import 'package:flutter/material.dart';
import 'package:tabbed_view/tabbed_view.dart';

class TabSelectionInterceptorExample extends StatefulWidget {
  const TabSelectionInterceptorExample({super.key});

  @override
  State<StatefulWidget> createState() => TabSelectionInterceptorExampleState();
}

class TabSelectionInterceptorExampleState
    extends State<TabSelectionInterceptorExample> {
  final TabbedViewController _controller = TabbedViewController([
    TabData(text: 'Tab 1'),
    TabData(text: 'Tab 2 (selection interception)'),
    TabData(text: 'Tab 3')
  ]);

  //@demoflu_start:example
  @override
  Widget build(BuildContext context) {
    return TabbedView(
        controller: _controller, tabSelectInterceptor: (index) => index != 1);
  }
  //@demoflu_end:example
}
