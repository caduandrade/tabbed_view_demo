import 'package:demoflu/demoflu.dart';
import 'package:flutter/material.dart';
import 'package:tabbed_view_demo/predefined_themes/dark_theme.dart';
import 'package:tabbed_view_demo/predefined_themes/minimalist_theme.dart';
import 'package:tabbed_view_demo/tab/custom_tab.dart';
import 'package:tabbed_view_demo/tab/draggable_tab.dart';
import 'package:tabbed_view_demo/tab/tab_selection_listener.dart';
import 'package:tabbed_view_demo/tabs_area/tabs_area_buttons.dart';

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
      title: 'Tabbed view (1.4.0)',
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
          Section(name: 'Tab', examples: [
            Example(
                name: 'Custom tab',
                content: CustomTabExample(menuNotifier),
                codeFile: 'lib/tab/custom_tab.dart'),
            Example(
                name: 'Selection listener',
                content: TabSelectionListenerExample(),
                codeFile: 'lib/tab/tab_selection_listener.dart',
                consoleEnabled: true),
            Example(
                name: 'Draggable',
                content: DraggableTabExample(),
                codeFile: 'lib/tab/draggable_tab.dart')
          ]),
          Section(name: 'Tabs area', examples: [
            Example(
                name: 'Buttons',
                content: TabsAreaButtonsExample(),
                codeFile: 'lib/tabs_area/tabs_area_buttons.dart')
          ]),
          Section(name: 'Predefined themes', examples: [
            Example(
                name: 'Dark',
                content: DarkThemeExample(menuNotifier),
                codeFile: 'lib/predefined_themes/dark_theme.dart'),
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
