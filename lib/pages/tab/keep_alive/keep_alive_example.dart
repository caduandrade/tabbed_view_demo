import 'package:flutter/material.dart';
import 'package:tabbed_view/tabbed_view.dart';

class KeepAliveExample extends StatefulWidget {
  const KeepAliveExample({super.key});

  @override
  State<StatefulWidget> createState() => KeepAliveExampleState();
}

class KeepAliveExampleState extends State<KeepAliveExample> {
  //@demoflu_start:example
  final TabbedViewController _controller = TabbedViewController([
    TabData(
        id: 't',
        text: 'TextField',
        view: Padding(
            child: TextField(
                decoration: InputDecoration(
                    isDense: true, border: OutlineInputBorder())),
            padding: EdgeInsets.all(8))),
    TabData(
        id: 'tka',
        text: 'TextField (keepAlive)',
        view: Padding(
            child: TextField(
                decoration: InputDecoration(
                    isDense: true, border: OutlineInputBorder())),
            padding: EdgeInsets.all(8)),
        keepAlive: true)
  ]);
  //@demoflu_end:example

  @override
  Widget build(BuildContext context) {
    return TabbedView(controller: _controller);
  }
}
