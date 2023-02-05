import 'package:demoflu/demoflu.dart';
import 'package:flutter/material.dart';
import 'package:tabbed_view/tabbed_view.dart';

class DraggableTabExample extends Example {
  @override
  Widget buildMainWidget(BuildContext context) {
    return ExampleStateful();
  }
}

class ExampleStateful extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => ExampleState();
}

class ExampleState extends State<ExampleStateful> {
  String? _acceptedData;
  late TabbedViewController _controller;

  @override
  void initState() {
    List<TabData> tabs = [];
    for (var i = 1; i < 7; i++) {
      Widget tabContent = Center(child: Text('Content $i'));
      tabs.add(TabData(text: 'Tab $i', content: tabContent));
    }
    _controller = TabbedViewController(tabs);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    TabbedView tabbedView = TabbedView(
        controller: _controller,
        draggableTabBuilder: (int tabIndex, TabData tab, Widget tabWidget) {
          return Draggable<String>(
              child: tabWidget,
              feedback: Material(
                  child: Container(
                      child: Text(tab.text),
                      padding: EdgeInsets.all(4),
                      decoration: BoxDecoration(border: Border.all()))),
              data: tab.text,
              dragAnchorStrategy: (Draggable<Object> draggable,
                  BuildContext context, Offset position) {
                return Offset.zero;
              });
        });

    DragTarget<String> dragTarget = DragTarget(
      builder: (
        BuildContext context,
        List<dynamic> accepted,
        List<dynamic> rejected,
      ) {
        return Container(
          padding: EdgeInsets.all(8),
          color: Colors.yellow[100],
          child: Center(
              child: ListTile(
                  title: Text('Drop here'),
                  subtitle: Text('Last dropped tab: ${_acceptedData ?? ''}'))),
        );
      },
      onAccept: (String data) {
        setState(() {
          _acceptedData = data;
        });
      },
    );

    return Column(children: [
      Expanded(child: tabbedView, flex: 3),
      Flexible(child: dragTarget, flex: 1)
    ], crossAxisAlignment: CrossAxisAlignment.stretch);
  }
}
