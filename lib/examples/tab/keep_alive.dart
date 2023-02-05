import 'package:demoflu/demoflu.dart';
import 'package:flutter/material.dart';
import 'package:tabbed_view/tabbed_view.dart';

class KeepAliveExample extends Example {
  @override
  Widget buildMainWidget(BuildContext context) {
    List<TabData> tabs = [];

    tabs.add(TabData(
        text: 'Tab 1',
        content: Padding(child: Text('Hello'), padding: EdgeInsets.all(8))));
    tabs.add(TabData(
        text: 'Tab 2',
        content:
            Padding(child: Text('Hello again'), padding: EdgeInsets.all(8))));
    tabs.add(TabData(
        text: 'TextField',
        content: Padding(
            child: TextField(
                decoration: InputDecoration(
                    isDense: true, border: OutlineInputBorder())),
            padding: EdgeInsets.all(8)),
        keepAlive: true));

    TabbedViewController controller = TabbedViewController(tabs);
    TabbedView tabbedView = TabbedView(controller: controller);
    return tabbedView;
  }
}
