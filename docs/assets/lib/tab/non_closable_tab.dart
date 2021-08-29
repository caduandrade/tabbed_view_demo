import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tabbed_view/tabbed_view.dart';
import 'package:tabbed_view_demo/snack_bar_mixin.dart';

class NonClosableExample extends StatelessWidget with SnackBarMixin {
  @override
  Widget build(BuildContext context) {
    var tabs = [
      TabData(text: 'Tab'),
      TabData(text: 'Non-closable tab', closable: false)
    ];
    TabbedView tabbedView = TabbedView(controller: TabbedViewController(tabs));
    return tabbedView;
  }
}
