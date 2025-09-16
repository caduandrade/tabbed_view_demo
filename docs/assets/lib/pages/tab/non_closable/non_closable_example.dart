import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:tabbed_view/tabbed_view.dart';

class NonClosableExample extends StatefulWidget {
  const NonClosableExample({super.key});

  @override
  State<StatefulWidget> createState() => NonClosableExampleState();
}

class NonClosableExampleState extends State<NonClosableExample> {
  //@demoflu_start:example
  final TabbedViewController _controller = TabbedViewController([
    TabData(text: 'Closable'),
    TabData(text: 'Non-closable', closable: false)
  ]);
  //@demoflu_end:example

  @override
  Widget build(BuildContext context) {
    return TabbedView(controller: _controller);
  }
}
