import 'package:demoflu/demoflu.dart';
import 'package:flutter/material.dart';
import 'package:tabbed_view/tabbed_view.dart';
import 'package:tabbed_view_demo/examples/snack_bar_mixin.dart';

class MenuButtonExample extends Example with SnackBarMixin {
  @override
  Widget buildMainWidget(BuildContext context) {
    var tabs = [
      TabData(text: 'Tab', buttons: [
        TabButton(
            icon: IconProvider.path(TabbedViewIcons.menu),
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
