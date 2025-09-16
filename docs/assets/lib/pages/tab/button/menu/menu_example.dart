import 'package:flutter/material.dart';
import 'package:tabbed_view/tabbed_view.dart';

class MenuExample extends StatefulWidget {
  const MenuExample({super.key});

  @override
  State<StatefulWidget> createState() => MenuExampleState();
}

class MenuExampleState extends State<MenuExample> {
  final TabbedViewController _controller = TabbedViewController([
    TabData(
        text: 'Tab',
        buttonsBuilder: (context) => [
              TabButton.menu((context) {
                return [
                  TabbedViewMenuItem(
                      text: 'Menu item 1', onSelection: () => _hello(context)),
                  TabbedViewMenuItem(
                      text: 'Menu item 2', onSelection: () => _hello(context))
                ];
              })
            ])
  ]);

  @override
  Widget build(BuildContext context) {
    return TabbedView(controller: _controller);
  }

  static void _hello(BuildContext context) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
          content: const Text('Hello!'),
          duration: const Duration(milliseconds: 1000)),
    );
  }
}
