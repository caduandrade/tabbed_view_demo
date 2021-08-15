import 'package:demoflu/demoflu.dart';
import 'package:flutter/material.dart';
import 'package:tabbed_view/tabbed_view.dart';

class DarkThemeExample extends ExampleStateful {
  DarkThemeExample(ExampleMenuNotifier notifier)
      : super(menuNotifier: notifier);

  @override
  DarkThemeExampleState createState() => DarkThemeExampleState();

  @override
  List<ExampleMenuWidget> menuWidgets() {
    return [
      MenuButton(id: 1, name: 'Normal'),
      MenuButton(id: 2, name: 'Change color set')
    ];
  }
}

class DarkThemeExampleState extends ExampleStatefulState<DarkThemeExample> {
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
      tabs.add(TabData(text: 'Tab $i'));
    }
    TabbedViewController controller = TabbedViewController(tabs);

    var contentBuilder = (BuildContext context, int index) {
      int i = index + 1;
      Text text = Text('Content $i', style: TextStyle(color: Colors.white));
      return Center(child: text);
    };

    TabbedView tabbedView = TabbedView(
        controller: controller,
        contentBuilder: contentBuilder,
        theme: TabbedViewTheme.dark());

    Container container = Container(child: tabbedView, color: Colors.black);

    return container;
  }

  Widget _changeColorSet() {
    List<TabData> tabs = [];
    for (var i = 1; i < 7; i++) {
      tabs.add(TabData(text: 'Tab $i'));
    }
    TabbedViewController controller = TabbedViewController(tabs);

    var contentBuilder = (BuildContext context, int index) {
      int i = index + 1;
      Text text = Text('Content $i', style: TextStyle(color: Colors.white));
      return Center(child: text);
    };

    TabbedViewTheme theme = TabbedViewTheme.dark(colorSet: Colors.indigo);

    TabbedView tabbedView = TabbedView(
        controller: controller, contentBuilder: contentBuilder, theme: theme);

    Container container = Container(child: tabbedView, color: Colors.black12);

    return container;
  }

  @override
  void onButtonClick(int id) {
    setState(() {
      _buttonId = id;
    });
  }
}
