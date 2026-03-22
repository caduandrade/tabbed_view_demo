import 'package:flutter/material.dart';
import 'package:tabbed_view/tabbed_view.dart';

class TooltipExample extends StatefulWidget {
  const TooltipExample({super.key});

  @override
  State<StatefulWidget> createState() => TooltipExampleState();
}

class TooltipExampleState extends State<TooltipExample> {
  late final TabbedViewController _controller;

  @override
  void initState() {
    super.initState();
    _controller = TabbedViewController(List.generate(
      6,
      (i) => TabData(
        id: i,
        text: 'Tab ${i + 1}',
        tooltip: 'Tooltip ${i + 1}',
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
