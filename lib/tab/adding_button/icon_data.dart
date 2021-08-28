import 'package:flutter/material.dart';
import 'package:tabbed_view/tabbed_view.dart';
import 'package:tabbed_view_demo/snack_bar_mixin.dart';

class IconDataExample extends StatelessWidget with SnackBarMixin {
  @override
  Widget build(BuildContext context) {
    TabData tab = TabData(text: 'Tab', buttons: [
      TabButton(
          iconData: Icons.star,
          iconSize: 16,
          onPressed: () => showSnackBar(context: context, msg: 'Hello!'))
    ]);
    TabbedView tabbedView = TabbedView(controller: TabbedViewController([tab]));
    return tabbedView;
  }
}
