import 'package:flutter/material.dart';
import 'package:tabbed_view/tabbed_view.dart';

class TabLeadingExample extends StatefulWidget {
  const TabLeadingExample({super.key});

  @override
  State<StatefulWidget> createState() => TabLeadingExampleState();
}

class TabLeadingExampleState extends State<TabLeadingExample> {
  //@demoflu_start:example
  final TabbedViewController _controller = TabbedViewController([
    TabData(
        text: 'Tab 1',
        leading: (context, status) => Icon(Icons.star, size: 16)),
    TabData(text: 'Tab 2'),
    TabData(text: 'Tab 3')
  ]);
  //@demoflu_end:example

  @override
  Widget build(BuildContext context) {
    return TabbedView(controller: _controller);
  }
}
