import 'package:demoflu/demoflu.dart';
import 'package:flutter/material.dart';
import 'package:tabbed_view/tabbed_view.dart';

class MinimalistThemeExample extends ExampleStateful {
  MinimalistThemeExample(ExampleMenuNotifier notifier)
      : super(menuNotifier: notifier);
  @override
  MinimalistThemePageState createState() => MinimalistThemePageState();

  @override
  List<ExampleMenuWidget> menuWidgets() {
    return [
      MenuButton(id: 1, name: 'Normal'),
      MenuButton(id: 2, name: 'Change color set')
    ];
  }
}

class MinimalistThemePageState
    extends ExampleStatefulState<MinimalistThemeExample> {
  int _buttonId = 1;

  @override
  Widget build(BuildContext context) {
    switch (_buttonId) {
      case 1:
        return _normal();
      case 2:
        return _changeColorSet();
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

    TabbedViewTheme theme = TabbedViewTheme(
        child: tabbedView, data: TabbedViewThemeData.minimalist());
    return theme;
  }

  Widget _changeColorSet() {
    TabbedViewController controller = _tabbedViewController();
    TabbedView tabbedView = TabbedView(controller: controller);

    TabbedViewTheme theme = TabbedViewTheme(
        child: tabbedView,
        data: TabbedViewThemeData.minimalist(colorSet: Colors.blue));
    return theme;
  }

  @override
  void onButtonClick(int id) {
    setState(() {
      _buttonId = id;
    });
  }
}
