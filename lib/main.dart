import 'package:demoflu/demoflu.dart';
import 'package:flutter/material.dart';
import 'package:tabbed_view_demo/predefined_themes/minimalist_theme.dart';

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
      maxSize: maxSize,
      title: 'Tabbed view (1.3.0)',
      widgetBackground: Colors.white,
      sectionsBuilder: (menuNotifier) {
        return [
          Section(name: 'Get started', examples: [
            Example(
                name: 'Basic',
                content: BasicExample(),
                codeFile: 'lib/get_started/basic.dart'),
            Example(
                name: 'Content builder',
                content: ContentBuilderExample(),
                codeFile: 'lib/get_started/content_builder.dart'),
            Example(
                name: 'Close button tooltip',
                content: CloseButtonTooltipExample(),
                codeFile: 'lib/get_started/close_button_tooltip.dart')
          ]),
          Section(name: 'Predefined themes', examples: [
            Example(
                name: 'Mobile',
                content: MobileThemeExample(menuNotifier),
                codeFile: 'lib/predefined_themes/mobile_theme.dart'),
            Example(
                name: 'Minimalist',
                content: MinimalistThemeExample(menuNotifier),
                codeFile: 'lib/predefined_themes/minimalist_theme.dart')
          ])
        ];
      }));
}
