import 'package:demoflu/demoflu.dart';
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
      MenuButton(id: 1, name: 'Adding button'),
      MenuButton(id: 2, name: 'Adding button - override color'),
      MenuButton(id: 3, name: 'Non-closable'),
      MenuButton(id: 4, name: 'Top alignment'),
      MenuButton(id: 5, name: 'Text style'),
      MenuButton(id: 6, name: 'Menu button')
    ];
  }
}

class CustomTabExampleState extends ExampleStatefulState<CustomTabExample> {
  int _buttonId = 1;

  @override
  Widget build(BuildContext context) {
    switch (_buttonId) {
      case 1:
        return _addingButton();
      case 2:
        return _addingButtonOverrideColor();
      case 3:
        return _nonClosable();
      case 4:
        return _topAlignment();
      case 5:
        return _textStyle();
      case 6:
        return _menuButton();
    }
    return Container();
  }

  @deprecated
  Widget _addingButton() {
    TabData tab = TabData(text: 'Tab', buttons: [
      TabButton(iconData: Icons.star, onPressed: () => print('Hello!'))
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

    TabbedView tabbedView = TabbedView(controller: TabbedViewController(tabs));

    TabbedViewThemeData themeData = TabbedViewThemeData.classic()
      ..tabsArea.tab.textStyle = TextStyle(fontSize: 20, color: Colors.blue);
    TabbedViewTheme theme = TabbedViewTheme(child: tabbedView, data: themeData);

    return theme;
  }

  Widget _topAlignment() {
    var tabs = [
      TabData(text: 'Tab 1'),
      TabData(text: 'Tab 2'),
    ];

    TabbedView tabbedView = TabbedView(controller: TabbedViewController(tabs));

    TabbedViewThemeData themeData = TabbedViewThemeData.classic();
    themeData.tabsArea.tab
      ..textStyle = TextStyle(fontSize: 20)
      ..verticalAlignment = VerticalAlignment.top;

    TabbedViewTheme theme = TabbedViewTheme(child: tabbedView, data: themeData);

    return theme;
  }

  @deprecated
  Widget _addingButtonOverrideColor() {
    var tabs = [
      TabData(text: 'Tab 1'),
      TabData(text: 'Tab 2', buttons: [
        TabButton(
            iconData: Icons.star,
            color: Colors.green,
            onPressed: () => print('Hello!'))
      ])
    ];
    TabbedView tabbedView = TabbedView(controller: TabbedViewController(tabs));
    return tabbedView;
  }

  Widget _menuButton() {
    var tabs = [
      TabData(text: 'Tab 1'),
      TabData(text: 'Tab 2', buttons: [
        TabButton(
            iconData: Icons.arrow_drop_down,
            menuBuilder: (context) {
              return [
                TabbedViewMenuItem(
                    text: 'Menu 1', onSelection: () => print('1')),
                TabbedViewMenuItem(
                    text: 'Menu 2', onSelection: () => print('2'))
              ];
            })
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
