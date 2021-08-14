import 'package:flutter/material.dart';

import 'example_page.dart';

@deprecated
abstract class ExampleMultiViewPageState<VIEW> extends ExamplePageState {
  VIEW? _currentView;

  VIEW defaultView();

  @override
  void initState() {
    super.initState();
    _currentView = defaultView();
  }

  Widget buildContent() {
    if (_currentView == null) {
      return Container();
    }
    return buildContentView(_currentView!);
  }

  Widget buildContentView(VIEW currentView);

  ElevatedButton buttonView(String text, VIEW newView) {
    return ElevatedButton(
        onPressed: () {
          setState(() {
            _currentView = newView;
          });
        },
        child: Text(text));
  }
}
