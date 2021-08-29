import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tabbed_view/tabbed_view.dart';
import 'package:tabbed_view_demo/snack_bar_mixin.dart';

class MenuButtonExample extends StatelessWidget with SnackBarMixin {
  @override
  Widget build(BuildContext context) {
    var tabs = [
      TabData(text: 'Tab', buttons: [
        TabButton(
            iconPath: TabbedViewIcons.menu,
            menuBuilder: (context) {
              return [
                TabbedViewMenuItem(
                    text: 'Menu item 1',
                    onSelection: () =>
                        showSnackBar(context: context, msg: 'menu item 1')),
                TabbedViewMenuItem(
                    text: 'Menu item 2',
                    onSelection: () =>
                        showSnackBar(context: context, msg: 'menu item 2'))
              ];
            })
      ])
    ];
    TabbedView tabbedView = TabbedView(controller: TabbedViewController(tabs));
    return tabbedView;
  }
}
