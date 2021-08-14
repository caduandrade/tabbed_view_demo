import 'package:demoflu/demoflu.dart';
import 'package:demoflu/src/menu/example_menu_widgets.dart';
import 'package:flutter/material.dart';
import 'package:tabbed_view/tabbed_view.dart';

class MobileThemeExample extends ExampleStateful {
  MobileThemeExample(ExampleMenuNotifier notifier)
      : super(menuNotifier: notifier);

  @override
  MobileThemeExampleState createState() => MobileThemeExampleState();

  @override
  List<ExampleMenuWidget> menuWidgets() {
    return [
      MenuButton(id: 1, name: 'Normal'),
      MenuButton(id: 2, name: 'Change color set'),
      MenuButton(id: 3, name: 'Change highlighted tab color')
    ];
  }
}

class MobileThemeExampleState extends ExampleStatefulState<MobileThemeExample> {
  int _buttonId = 1;

  @override
  Widget build(BuildContext context) {
    switch (_buttonId) {
      case 1:
        return _normal();
      case 2:
        return _changeColorSet();
      case 3:
        return _changeHighlightedTabColor();
    }
    return Container();
  }

  Widget _normal() {
    List<TabData> tabs = [];
    for (var i = 1; i < 7; i++) {
      tabs.add(
          TabData(text: 'Tab $i', content: Center(child: Text('Content $i'))));
    }
    TabbedViewController controller = TabbedViewController(tabs);
    TabbedView tabbedView =
        TabbedView(controller: controller, theme: TabbedViewTheme.mobile());
    return tabbedView;
  }

  Widget _changeColorSet() {
    List<TabData> tabs = [];
    for (var i = 1; i < 7; i++) {
      tabs.add(
          TabData(text: 'Tab $i', content: Center(child: Text('Content $i'))));
    }
    TabbedViewController controller = TabbedViewController(tabs);
    TabbedViewTheme theme = TabbedViewTheme.mobile(colorSet: Colors.blueGrey);
    TabbedView tabbedView = TabbedView(controller: controller, theme: theme);
    return tabbedView;
  }

  Widget _changeHighlightedTabColor() {
    List<TabData> tabs = [];
    for (var i = 1; i < 7; i++) {
      tabs.add(
          TabData(text: 'Tab $i', content: Center(child: Text('Content $i'))));
    }
    TabbedViewController controller = TabbedViewController(tabs);
    TabbedViewTheme theme =
        TabbedViewTheme.mobile(highlightedTabColor: Colors.green[700]!);
    TabbedView tabbedView = TabbedView(controller: controller, theme: theme);
    return tabbedView;
  }

  @override
  void onButtonClick(int buttonId) {
    setState(() {
      _buttonId = buttonId;
    });
  }
}
