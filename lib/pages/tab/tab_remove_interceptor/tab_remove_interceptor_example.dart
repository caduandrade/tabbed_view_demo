import 'dart:async';

import 'package:flutter/material.dart';
import 'package:tabbed_view/tabbed_view.dart';

class TabRemoveInterceptorExample extends StatefulWidget {
  const TabRemoveInterceptorExample({super.key});

  @override
  State<StatefulWidget> createState() => TabRemoveInterceptorExampleState();
}

class TabRemoveInterceptorExampleState
    extends State<TabRemoveInterceptorExample> {
  final TabbedViewController _controller = TabbedViewController(
      [TabData(text: 'Tab 1'), TabData(text: 'Tab 2'), TabData(text: 'Tab 3')]);

  //@demoflu_start:example
  @override
  Widget build(BuildContext context) {
    return TabbedView(
        controller: _controller, tabRemoveInterceptor: _tabRemoveInterceptor);
  }

  FutureOr<bool> _tabRemoveInterceptor(
      context, int tabIndex, TabData tabData) async {
    final bool? shouldClose = await showExitConfirmationDialog(context);
    return shouldClose ?? false;
  }

  Future<bool?> showExitConfirmationDialog(BuildContext context) async {
    return await showDialog<bool>(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text('Confirm closing'),
          content: const Text('Are you sure you want to close this tab?'),
          actions: <Widget>[
            TextButton(
              child: const Text('Cancel'),
              onPressed: () {
                Navigator.pop(context, false); // Returns false
              },
            ),
            TextButton(
              child: const Text('Close'),
              onPressed: () {
                Navigator.pop(context, true); // Returns true
              },
            ),
          ],
        );
      },
    );
  }
//@demoflu_end:example
}
