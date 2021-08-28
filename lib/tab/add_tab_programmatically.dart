import 'package:demoflu/demoflu.dart';
import 'package:flutter/material.dart';
import 'package:tabbed_view/tabbed_view.dart';

class AddTabExample extends ExampleStateful {
  AddTabExample(ExampleMenuNotifier menuNotifier)
      : super(menuNotifier: menuNotifier);

  @override
  AddTabExampleState createState() => AddTabExampleState();

  @override
  List<ExampleMenuWidget> menuWidgets() {
    return [
      MenuButton(id: 1, name: 'Add tab'),
      MenuButton(id: 2, name: 'Remove tabs')
    ];
  }
}

class AddTabExampleState extends ExampleStatefulState<AddTabExample> {
  TabbedViewController _controller = TabbedViewController([]);
  int _lastTabIndex = 1;

  @override
  Widget build(BuildContext context) {
    TabbedView tabbedView = TabbedView(controller: _controller);
    return tabbedView;
  }

  _onAdd() {
    _controller.addTab(TabData(
        text: 'Tab $_lastTabIndex',
        content: Center(child: Text('Content $_lastTabIndex'))));
    _lastTabIndex++;
  }

  _onRemoveTabs() {
    _controller.removeTabs();
    _lastTabIndex = 1;
  }

  @override
  void onButtonClick(int buttonId) {
    if (buttonId == 1) {
      _onAdd();
    } else if (buttonId == 2) {
      _onRemoveTabs();
    }
  }
}
