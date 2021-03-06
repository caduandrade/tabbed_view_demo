import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tabbed_view/tabbed_view.dart';
import 'package:tabbed_view_demo/snack_bar_mixin.dart';

class OverrideThemeColorExample extends StatelessWidget with SnackBarMixin {
  @override
  Widget build(BuildContext context) {
    var tabs = [
      TabData(text: 'Tab', buttons: [
        TabButton(
            icon: IconProvider.data(Icons.star),
            color: Colors.green,
            onPressed: () => showSnackBar(context: context, msg: 'Hello!'))
      ])
    ];
    TabbedView tabbedView = TabbedView(controller: TabbedViewController(tabs));

    return tabbedView;
  }
}
