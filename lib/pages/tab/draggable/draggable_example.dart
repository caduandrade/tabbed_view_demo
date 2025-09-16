import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:tabbed_view/tabbed_view.dart';

class DraggableExample extends StatefulWidget {
  const DraggableExample({super.key});

  @override
  State<StatefulWidget> createState() => DraggableExampleState();
}

class DraggableExampleState extends State<DraggableExample> {
  //@demoflu_start:example
  final TabbedViewController _controller = TabbedViewController(
      [TabData(text: 'Tab 1', value: 1), TabData(text: 'Tab 2', value: 2)]);
  //@demoflu_end:example

  @override
  Widget build(BuildContext context) {
    return TabbedView(controller: _controller);
  }
}
