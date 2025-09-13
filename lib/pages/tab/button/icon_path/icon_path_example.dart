import 'package:flutter/material.dart';
import 'package:tabbed_view/tabbed_view.dart';

class IconPathExample extends StatefulWidget {
  const IconPathExample({super.key});

  @override
  State<StatefulWidget> createState() => IconPathExampleState();
}

class IconPathExampleState extends State<IconPathExample> {
  final TabbedViewController _controller = TabbedViewController([
    TabData(
        text: 'Tab',
        buttonsBuilder: (context) => [
              TabButton.icon(IconProvider.path(_path),
                  color: Colors.green, onPressed: () => _hello(context))
            ])
  ]);

  @override
  Widget build(BuildContext context) {
    return TabbedView(controller: _controller);
  }

  static Path _path(Size size) {
    Path path = Path();
    path.moveTo(size.width * 0.1, size.height * 0.1);
    path.lineTo(size.width * 0.9, size.height * 0.1);
    path.lineTo(size.width * 0.9, size.height * 0.9);
    path.lineTo(size.width * 0.1, size.height * 0.9);
    path.close();
    return path;
  }

  static void _hello(BuildContext context) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
          content: const Text('Hello!'),
          duration: const Duration(milliseconds: 1000)),
    );
  }
}
