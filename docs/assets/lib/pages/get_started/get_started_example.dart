import 'package:flutter/material.dart';
import 'package:tabbed_view/tabbed_view.dart';

class GetStartedExample extends StatefulWidget {
  const GetStartedExample({super.key});

  @override
  State<StatefulWidget> createState() => GetStartedExampleState();
}

class GetStartedExampleState extends State<GetStartedExample> {
  late final TabbedViewController _controller;

  @override
  void initState() {
    super.initState();
    _controller = TabbedViewController(List.generate(
      6,
      (i) => TabData(
        id: i,
        text: 'Tab ${i + 1}',
        view: Center(
            child: Text(
          'Content ${i + 1}',
        )),
      ),
    ));
  }

  @override
  Widget build(BuildContext context) {
    return TabbedView(controller: _controller);
  }
}
