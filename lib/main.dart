import 'package:demoflu/demoflu.dart';
import 'package:flutter/material.dart';

import 'get_started/basic.dart';
import 'get_started/close_button_tooltip.dart';
import 'get_started/content_builder.dart';

void main() {
  Size? maxSize;
  // maxSize = Size(400, 300);
  runApp(DemoFluApp(
      resizable: true,
      initialWidthWeight: .95,
      initialHeightWeight: .95,
      title: 'Tabbed view (1.3.0)',
      widgetBackground: Colors.white,
      sections: [
        Section(examples: [
          Example(
              name: 'Basic',
              builder: (buttonClickNotifier) => BasicExample(),
              codeFile: 'lib/get_started/basic.dart',
              maxSize: maxSize),
          Example(
              name: 'Content builder',
              builder: (buttonClickNotifier) => ContentBuilderExample(),
              codeFile: 'lib/get_started/content_builder.dart',
              maxSize: maxSize),
          Example(
              name: 'Close button tooltip',
              builder: (buttonClickNotifier) => CloseButtonTooltipExample(),
              codeFile: 'lib/get_started/close_button_tooltip.dart',
              maxSize: maxSize)
        ])
      ]));
}
