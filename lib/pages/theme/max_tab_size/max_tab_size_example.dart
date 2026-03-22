import 'package:flutter/material.dart';
import 'package:tabbed_view/tabbed_view.dart';

class MaxTabSizeExample extends StatefulWidget {
  const MaxTabSizeExample({super.key});

  @override
  State<StatefulWidget> createState() => MaxTabSizeExampleState();
}

class MaxTabSizeExampleState extends State<MaxTabSizeExample> {
  late final TabbedViewController _controller;

  @override
  void initState() {
    super.initState();
    _controller = TabbedViewController(List.generate(
      6,
      (i) => TabData(
        id: i,
        text: i == 2
            ? 'This is a very long tab title that should be truncated'
            : 'Tab ${i + 1}',
        view: Center(
            child: Text(
          'Content ${i + 1}',
        )),
      ),
    ));
  }

  @override
  Widget build(BuildContext context) {
    TabbedViewThemeData theme = TabbedViewThemeData.classic();
    theme.tab.maxMainSize = 150;
    theme.tab.maxLines = 2;
    return TabbedViewTheme(
        data: theme, child: TabbedView(controller: _controller));
  }
}
