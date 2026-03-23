import 'package:flutter/material.dart';
import 'package:tabbed_view/tabbed_view.dart';

class IndividualTabThemingExample extends StatefulWidget {
  const IndividualTabThemingExample({super.key});

  @override
  State<StatefulWidget> createState() => IndividualTabThemingExampleState();
}

class IndividualTabThemingExampleState
    extends State<IndividualTabThemingExample> {
  late final TabbedViewController _controller;

  @override
  void initState() {
    super.initState();
    _controller = TabbedViewController(List.generate(
      6,
      (i) => TabData(
        id: i + 1,
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
    return TabbedViewTheme(
        data: TabbedViewThemeData.minimalist(tabStyleResolver: _TabStyle()),
        child: TabbedView(controller: _controller));
  }
}

class _TabStyle extends MinimalistTabStyleResolver {
  @override
  Color? backgroundColor(TabStyleContext context) {
    if (context.tab.id == 2) {
      switch (context.status) {
        case TabStatus.selected:
          return Colors.green.shade900;
        case TabStatus.hovered:
          return Colors.green.shade200;
        case TabStatus.unselected:
          return Colors.green.shade100;
      }
    }
    return null;
  }
}
