import 'package:demoflu/demoflu.dart';
import 'package:flutter/material.dart';

import 'get_started/basic.dart';
import 'get_started/close_button_tooltip.dart';
import 'get_started/content_builder.dart';
import 'predefined_themes/mobile_theme.dart';

void main() {
  Size? maxSize;
  // maxSize = Size(400, 300);
  runApp(DemoFluApp(
      resizable: true,
      initialWidthWeight: .95,
      initialHeightWeight: .95,
      title: 'Tabbed view (1.3.0)',
      widgetBackground: Colors.white,
      sectionsBuilder: (menuNotifier) {
        return [
          Section(name: 'Get started', examples: [
            Example(
                name: 'Basic',
                content: BasicExample(),
                codeFile: 'lib/get_started/basic.dart',
                maxSize: maxSize),
            Example(
                name: 'Content builder',
                content: ContentBuilderExample(),
                codeFile: 'lib/get_started/content_builder.dart',
                maxSize: maxSize),
            Example(
                name: 'Close button tooltip',
                content: CloseButtonTooltipExample(),
                codeFile: 'lib/get_started/close_button_tooltip.dart',
                maxSize: maxSize)
          ]),
          Section(name: 'Predefined themes', examples: [
            Example(
                name: 'Mobile',
                content: MobileThemeExample(menuNotifier),
                codeFile: 'lib/predefined_themes/mobile_theme.dart',
                maxSize: maxSize)
          ])
        ];
      }));
}
