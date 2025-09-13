import 'package:flutter/material.dart';
import 'package:tabbed_view/tabbed_view.dart';

class IconDataExample extends StatefulWidget {
  const IconDataExample({super.key});

  @override
  State<StatefulWidget> createState() => IconDataExampleState();
}

class IconDataExampleState extends State<IconDataExample> {
  final TabbedViewController _controller = TabbedViewController([
    TabData(
        text: 'Tab',
        buttonsBuilder: (context) => [
              TabButton.icon(IconProvider.data(Icons.phone),
                  color: Colors.blue, onPressed: () => _hello(context))
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
