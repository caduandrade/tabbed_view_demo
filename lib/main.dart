import 'package:demoflu/demoflu.dart';
import 'package:flutter/material.dart';

import 'get_started/content_builder.dart';

void main() {
  Size? maxSize;
  // maxSize = Size(400, 300);
  runApp(DemoFluApp(
      resizable: true,
      initialWidthWeight: .95,
      initialHeightWeight: .95,
      title: 'Tabbed view (1.2.1)',
      widgetBackground: Colors.white,
      sections: [
        Section(examples: [
          Example(
              name: 'Content builder',
              builder: (buttonClickNotifier) => ContentBuilderExample(),
              codeFile: 'lib/get_started/content_builder.dart',
              maxSize: maxSize)
        ])
      ]));
}
