import 'package:demoflu/demoflu.dart';
import 'package:flutter/material.dart';
import 'package:tabbed_view/tabbed_view.dart';
import 'package:tabbed_view_demo/examples/snack_bar_mixin.dart';

class IconDataExample extends Example with SnackBarMixin {
  @override
  Widget buildMainWidget(BuildContext context) {
    TabData tab = TabData(text: 'Tab', buttons: [
      TabButton(
          icon: IconProvider.data(Icons.star),
          onPressed: () => showSnackBar(context: context, msg: 'Hello!'))
    ]);

    TabbedView tabbedView = TabbedView(controller: TabbedViewController([tab]));

    return tabbedView;
  }
}
