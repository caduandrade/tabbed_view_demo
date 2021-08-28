import 'package:flutter/material.dart';
import 'package:tabbed_view/tabbed_view.dart';
import 'package:tabbed_view_demo/snackbar_mixin.dart';

class IconPathExample extends StatelessWidget with SnackBarMixin {
  @override
  Widget build(BuildContext context) {
    TabData tab = TabData(text: 'Tab', buttons: [
      TabButton(
          iconPath: _path,
          onPressed: () => showSnackBar(context: context, msg: 'Hello!'))
    ]);
    TabbedView tabbedView = TabbedView(controller: TabbedViewController([tab]));
    return tabbedView;
  }

  Path _path(Size size) {
    Path path = Path();
    path.moveTo(size.width * 0.1, size.height * 0.1);
    path.lineTo(size.width * 0.9, size.height * 0.1);
    path.lineTo(size.width * 0.9, size.height * 0.9);
    path.lineTo(size.width * 0.1, size.height * 0.9);
    path.close();
    return path;
  }
}
