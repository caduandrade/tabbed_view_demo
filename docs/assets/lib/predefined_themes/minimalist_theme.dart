import 'package:demoflu/demoflu.dart';
import 'package:demoflu/src/menu/example_menu_widgets.dart';
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

  Widget _normal() {
    List<TabData> tabs = [];
    for (var i = 1; i < 7; i++) {
      tabs.add(
          TabData(text: 'Tab $i', content: Center(child: Text('Content $i'))));
    }
    TabbedViewController controller = TabbedViewController(tabs);
    TabbedView tabbedView =
        TabbedView(controller: controller, theme: TabbedViewTheme.minimalist());
    return tabbedView;
  }

  Widget _changeColorSet() {
    List<TabData> tabs = [];
    for (var i = 1; i < 7; i++) {
      tabs.add(
          TabData(text: 'Tab $i', content: Center(child: Text('Content $i'))));
    }
    TabbedViewController controller = TabbedViewController(tabs);
    TabbedView tabbedView = TabbedView(
        controller: controller,
        theme: TabbedViewTheme.minimalist(colorSet: Colors.blue));
    return tabbedView;
  }

  @override
  void onButtonClick(int id) {
    setState(() {
      _buttonId = id;
    });
  }
}
