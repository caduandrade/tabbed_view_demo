import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:tabbed_view/tabbed_view.dart';

class TabProgrammaticallyExample extends StatefulWidget {
  const TabProgrammaticallyExample({super.key});

  @override
  State<StatefulWidget> createState() => TabProgrammaticallyExampleState();
}

class TabProgrammaticallyExampleState
    extends State<TabProgrammaticallyExample> {
  //@demoflu_start:example
  TabbedViewController _controller = TabbedViewController([]);
  int _lastTabIndex = 1;

  @override
  Widget build(BuildContext context) {
    Widget menu = Wrap(children: [
      ElevatedButton(onPressed: _onAdd, child: Text('Add tab')),
      ElevatedButton(onPressed: _onRemoveTabs, child: Text('Remove tabs')),
      ElevatedButton(
          onPressed: _onChangeTabText,
          child: Text('Change the first tab text')),
      ElevatedButton(
          onPressed: _onDisableClose, child: Text('First tab non-closable')),
      ElevatedButton(
          onPressed: _onNewControllerInstance, child: Text('New controller'))
    ], spacing: 10, runSpacing: 10);

    return Column(children: [
      Padding(padding: EdgeInsets.only(bottom: 10), child: menu),
      Expanded(child: TabbedView(controller: _controller))
    ], crossAxisAlignment: CrossAxisAlignment.stretch);
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
  //@demoflu_end:example
}
