import 'package:flutter/material.dart';
import 'package:tabbed_view/tabbed_view.dart';

class ContentBuilderExample extends StatefulWidget {
  const ContentBuilderExample({super.key});

  @override
  State<StatefulWidget> createState() => ContentBuilderExampleState();
}

class ContentBuilderExampleState extends State<ContentBuilderExample> {
  late final TabbedViewController _controller;

  @override
  void initState() {
    super.initState();
    _controller = TabbedViewController(List.generate(
      6,
      (i) => TabData(text: 'Tab ${i + 1}'),
    ));
  }

  @override
  Widget build(BuildContext context) {
    return TabbedView(
        controller: _controller,
        contentBuilder: (BuildContext context, int tabIndex) {
          return Center(child: Text('Content ${tabIndex + 1}'));
        });
  }
}
