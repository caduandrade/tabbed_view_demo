import 'package:flutter/material.dart';
import 'package:tabbed_view/tabbed_view.dart';

class CloseButtonTooltipExample extends StatefulWidget {
  const CloseButtonTooltipExample({super.key});

  @override
  State<StatefulWidget> createState() => CloseButtonTooltipExampleState();
}

class CloseButtonTooltipExampleState extends State<CloseButtonTooltipExample> {
  late final TabbedViewController _controller;

  @override
  void initState() {
    super.initState();
    _controller = TabbedViewController(List.generate(
      6,
      (i) => TabData(
          text: 'Tab ${i + 1}',
          content: Center(child: Text('Content ${i + 1}'))),
    ));
  }

  @override
  Widget build(BuildContext context) {
    //@demoflu_start:code
    return TabbedView(
        controller: _controller,
        closeButtonTooltip: 'Click here to close the tab');
    //@demoflu_end:code
  }
}
