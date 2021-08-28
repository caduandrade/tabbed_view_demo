import 'package:demoflu/demoflu.dart';
import 'package:flutter/material.dart';
import 'package:tabbed_view_demo/predefined_themes/dark_theme.dart';
import 'package:tabbed_view_demo/predefined_themes/minimalist_theme.dart';
import 'package:tabbed_view_demo/tab/custom_tab.dart';
import 'package:tabbed_view_demo/tab/draggable_tab.dart';
import 'package:tabbed_view_demo/tab/tab_close_interceptor.dart';
import 'package:tabbed_view_demo/tab/tab_close_listener.dart';
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
      title: 'Tabbed view (1.8.0)',
      widgetBackground: Colors.white,
      appMenuBuilder: (exampleMenuNotifier) {
        return [
          MenuItem(name: 'Get started', italic: true),
          MenuItem(
              name: 'Basic',
              example: BasicExample(),
              codeFile: 'lib/get_started/basic.dart',
              indentation: 2),
          MenuItem(
              name: 'Content builder',
              example: ContentBuilderExample(),
              codeFile: 'lib/get_started/content_builder.dart',
              indentation: 2),
          MenuItem(
              name: 'Close button tooltip',
              example: CloseButtonTooltipExample(),
              codeFile: 'lib/get_started/close_button_tooltip.dart',
              indentation: 2),
          MenuItem(name: 'Tab', italic: true),
          MenuItem(
              name: 'Custom tab',
              example: CustomTabExample(exampleMenuNotifier),
              codeFile: 'lib/tab/custom_tab.dart',
              indentation: 2),
          MenuItem(
              name: 'Tab close interceptor',
              example: TabCloseInterceptorExample(),
              codeFile: 'lib/tab/tab_close_interceptor.dart',
              indentation: 2),
          MenuItem(
              name: 'Tab close listener',
              example: TabCloseListenerExample(),
              codeFile: 'lib/tab/tab_close_listener.dart',
              indentation: 2),
          MenuItem(
              name: 'Selection listener',
              example: TabSelectionListenerExample(),
              codeFile: 'lib/tab/tab_selection_listener.dart',
              consoleEnabled: true,
              indentation: 2),
          MenuItem(
              name: 'Draggable',
              example: DraggableTabExample(),
              codeFile: 'lib/tab/draggable_tab.dart',
              indentation: 2),
          MenuItem(name: 'Tabs area', italic: true),
          MenuItem(
              name: 'Buttons',
              example: TabsAreaButtonsExample(),
              codeFile: 'lib/tabs_area/tabs_area_buttons.dart',
              indentation: 2),
          MenuItem(name: 'Predefined themes', italic: true),
          MenuItem(
              name: 'Dark',
              example: DarkThemeExample(exampleMenuNotifier),
              codeFile: 'lib/predefined_themes/dark_theme.dart',
              indentation: 2),
          MenuItem(
              name: 'Mobile',
              example: MobileThemeExample(exampleMenuNotifier),
              codeFile: 'lib/predefined_themes/mobile_theme.dart',
              indentation: 2),
          MenuItem(
              name: 'Minimalist',
              example: MinimalistThemeExample(exampleMenuNotifier),
              codeFile: 'lib/predefined_themes/minimalist_theme.dart',
              indentation: 2)
        ];
      }));
}
