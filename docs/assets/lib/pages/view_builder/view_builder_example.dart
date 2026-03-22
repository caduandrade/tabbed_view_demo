import 'package:flutter/material.dart';
import 'package:tabbed_view/tabbed_view.dart';

class ViewBuilderExample extends StatefulWidget {
  const ViewBuilderExample({super.key});

  @override
  State<StatefulWidget> createState() => ViewBuilderExampleState();
}

class ViewBuilderExampleState extends State<ViewBuilderExample> {
  late final TabbedViewController _controller;

  @override
  void initState() {
    super.initState();
    _controller = TabbedViewController(List.generate(
      6,
      (i) => TabData(
        id: i + 1,
        text: 'Tab ${i + 1}',
      ),
    ));
  }

  @override
  Widget build(BuildContext context) {
    return TabbedView(
        controller: _controller,
        viewBuilder: (BuildContext context, TabData tab) {
          return Center(child: Text('View ${tab.id}'));
        });
  }
}
