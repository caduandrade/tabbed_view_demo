import 'package:demoflu/demoflu.dart';
import 'package:flutter/material.dart';
import 'package:tabbed_view/tabbed_view.dart';
import 'package:tabbed_view_demo/examples/snack_bar_mixin.dart';

class NonClosableExample extends Example with SnackBarMixin {
  @override
  Widget buildMainWidget(BuildContext context) {
    var tabs = [
      TabData(text: 'Tab'),
      TabData(text: 'Non-closable tab', closable: false)
    ];
    TabbedView tabbedView = TabbedView(controller: TabbedViewController(tabs));
    return tabbedView;
  }
}
