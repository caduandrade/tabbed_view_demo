import 'package:demoflu/demoflu.dart';
import 'package:flutter/material.dart';
import 'package:tabbed_view/tabbed_view.dart';

class TabProgrammaticallyExample extends ExampleStateful {
  TabProgrammaticallyExample(ExampleMenuNotifier menuNotifier)
      : super(menuNotifier: menuNotifier);

  @override
  AddTabExampleState createState() => AddTabExampleState();

  @override
  List<ExampleMenuWidget> menuWidgets() {
    return [
      MenuButton(id: 1, name: 'Add tab'),
      MenuButton(id: 2, name: 'Remove tabs'),
      MenuButton(id: 3, name: 'Change the first tab text'),
      MenuButton(id: 4, name: 'First tab non-closable'),
      MenuButton(id: 5, name: 'New controller')
    ];
  }
}

class AddTabExampleState
    extends ExampleStatefulState<TabProgrammaticallyExample> {
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

  _onChangeTabText() {
    if (_controller.tabs.length > 0) {
      setState(() {
        _controller.tabs[0].text = 'New text';
      });
    }
  }

  _onDisableClose() {
    if (_controller.tabs.length > 0) {
      setState(() {
        _controller.tabs[0].closable = false;
      });
    }
  }

  _onNewControllerInstance() {
    setState(() {
      _controller = TabbedViewController([]);
    });
  }

  @override
  void onButtonClick(int buttonId) {
    if (buttonId == 1) {
      _onAdd();
    } else if (buttonId == 2) {
      _onRemoveTabs();
    } else if (buttonId == 3) {
      _onChangeTabText();
    } else if (buttonId == 4) {
      _onDisableClose();
    } else if (buttonId == 5) {
      _onNewControllerInstance();
    }
  }
}
