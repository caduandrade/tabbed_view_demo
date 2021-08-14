import 'package:demoflu/demoflu.dart';
import 'package:demoflu/src/menu/example_menu_widgets.dart';
import 'package:flutter/material.dart';
import 'package:tabbed_view/tabbed_view.dart';

class CustomTabExample extends ExampleStateful {
  CustomTabExample(ExampleMenuNotifier menuNotifier)
      : super(menuNotifier: menuNotifier);

  @override
  CustomTabExampleState createState() => CustomTabExampleState();

  @override
  List<ExampleMenuWidget> menuWidgets() {
    return [
      MenuButton(id: 1, name: 'Extra button'),
      MenuButton(id: 2, name: 'Extra button - override color'),
      MenuButton(id: 3, name: 'Non-closable'),
      MenuButton(id: 4, name: 'Top alignment'),
      MenuButton(id: 5, name: 'Text style')
    ];
  }
}

class CustomTabExampleState extends ExampleStatefulState<CustomTabExample> {
  int _buttonId = 1;

  @override
  Widget build(BuildContext context) {
    switch (_buttonId) {
      case 1:
        return _extraButton();
      case 2:
        return _extraButtonOverrideColor();
      case 3:
        return _nonClosable();
      case 4:
        return _topAlignment();
      case 5:
        return _textStyle();
    }
    return Container();
  }

  Widget _extraButton() {
    TabData tab = TabData(text: 'Tab', buttons: [
      TabButton(icon: Icons.star, onPressed: () => print('Hello!'))
    ]);
    TabbedView tabbedView = TabbedView(controller: TabbedViewController([tab]));
    return tabbedView;
  }

  Widget _nonClosable() {
    var tabs = [
      TabData(text: 'Tab'),
      TabData(text: 'Non-closable tab', closable: false)
    ];
    TabbedView tabbedView = TabbedView(controller: TabbedViewController(tabs));
    return tabbedView;
  }

  Widget _textStyle() {
    var tabs = [
      TabData(text: 'Tab 1'),
      TabData(text: 'Tab 2'),
    ];

    TabbedViewTheme theme = TabbedViewTheme.classic();
    theme.tabsArea.tab.textStyle = TextStyle(fontSize: 20, color: Colors.blue);

    TabbedView tabbedView =
        TabbedView(controller: TabbedViewController(tabs), theme: theme);
    return tabbedView;
  }

  Widget _topAlignment() {
    var tabs = [
      TabData(text: 'Tab 1'),
      TabData(text: 'Tab 2'),
    ];

    TabbedViewTheme theme = TabbedViewTheme.classic();
    theme.tabsArea.tab
      ..textStyle = TextStyle(fontSize: 20)
      ..verticalAlignment = VerticalAlignment.top;

    TabbedView tabbedView =
        TabbedView(controller: TabbedViewController(tabs), theme: theme);
    return tabbedView;
  }

  Widget _extraButtonOverrideColor() {
    var tabs = [
      TabData(text: 'Tab 1'),
      TabData(text: 'Tab 2', buttons: [
        TabButton(
            icon: Icons.star,
            color: Colors.green,
            onPressed: () => print('Hello!'))
      ])
    ];
    TabbedView tabbedView = TabbedView(controller: TabbedViewController(tabs));
    return tabbedView;
  }

  @override
  void onButtonClick(int id) {
    setState(() {
      _buttonId = id;
    });
  }
}
