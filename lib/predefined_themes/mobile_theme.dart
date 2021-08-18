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

  TabbedViewController _tabbedViewController() {
    List<TabData> tabs = [];
    for (var i = 1; i < 7; i++) {
      tabs.add(
          TabData(text: 'Tab $i', content: Center(child: Text('Content $i'))));
    }
    return TabbedViewController(tabs);
  }

  Widget _normal() {
    TabbedViewController controller = _tabbedViewController();
    TabbedView tabbedView = TabbedView(controller: controller);

    TabbedViewTheme theme =
        TabbedViewTheme(child: tabbedView, data: TabbedViewThemeData.mobile());
    return theme;
  }

  Widget _changeColorSet() {
    TabbedViewController controller = _tabbedViewController();
    TabbedView tabbedView = TabbedView(controller: controller);

    TabbedViewTheme theme = TabbedViewTheme(
        child: tabbedView,
        data: TabbedViewThemeData.mobile(colorSet: Colors.blueGrey));
    return theme;
  }

  Widget _changeHighlightedTabColor() {
    TabbedViewController controller = _tabbedViewController();
    TabbedView tabbedView = TabbedView(controller: controller);

    TabbedViewTheme theme = TabbedViewTheme(
        child: tabbedView,
        data: TabbedViewThemeData.mobile(
            highlightedTabColor: Colors.green[700]!));
    return theme;
  }

  @override
  void onButtonClick(int buttonId) {
    setState(() {
      _buttonId = buttonId;
    });
  }
}
