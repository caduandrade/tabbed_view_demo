import 'package:demoflu/demoflu.dart';
import 'package:flutter/material.dart';
import 'package:tabbed_view_demo/tab/adding_button/icon_data.dart';
import 'package:tabbed_view_demo/tab/adding_button/icon_path.dart';
import 'package:tabbed_view_demo/tab/adding_button/menu_button.dart';
import 'package:tabbed_view_demo/tab/adding_button/override_theme_color.dart';
import 'package:tabbed_view_demo/tab/custom_tab.dart';
import 'package:tabbed_view_demo/tab/draggable_tab.dart';
import 'package:tabbed_view_demo/tab/non_closable_tab.dart';
import 'package:tabbed_view_demo/tab/tab_close_interceptor.dart';
import 'package:tabbed_view_demo/tab/tab_close_listener.dart';
import 'package:tabbed_view_demo/tab/tab_selection_listener.dart';
import 'package:tabbed_view_demo/tabs_area/tabs_area_buttons.dart';
import 'package:tabbed_view_demo/themes/default_themes/dark_theme.dart';
import 'package:tabbed_view_demo/themes/default_themes/minimalist_theme.dart';
import 'package:tabbed_view_demo/themes/default_themes/mobile_theme.dart';
import 'package:tabbed_view_demo/themes/theme_from_scratch.dart';

import 'get_started/get_started.dart';
import 'get_started/close_button_tooltip.dart';
import 'get_started/content_builder.dart';

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
          MenuItem(
              name: 'Get started',
              example: GetStartedExample(),
              codeFile: 'lib/get_started/get_started.dart'),
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
          MenuItem(name: 'Adding button', italic: true, indentation: 2),
          MenuItem(
              name: 'Icon data',
              example: IconDataExample(),
              codeFile: 'lib/tab/adding_button/icon_data.dart',
              indentation: 3),
          MenuItem(
              name: 'Icon path',
              example: IconPathExample(),
              codeFile: 'lib/tab/adding_button/icon_path.dart',
              indentation: 3),
          MenuItem(
              name: 'Override theme color',
              example: OverrideThemeColorExample(),
              codeFile: 'lib/tab/adding_button/override_theme_color.dart',
              indentation: 3),
          MenuItem(
              name: 'Menu button',
              example: MenuButtonExample(),
              codeFile: 'lib/tab/adding_button/menu_button.dart',
              indentation: 3),
          MenuItem(
              name: 'Non-closable tab',
              example: NonClosableExample(),
              codeFile: 'lib/tab/non_closable_tab.dart',
              indentation: 2),
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
          MenuItem(name: 'Themes', italic: true),
          MenuItem(name: 'Default themes', italic: true, indentation: 2),
          MenuItem(
              name: 'Dark',
              example: DarkThemeExample(exampleMenuNotifier),
              codeFile: 'lib/themes/default_themes/dark_theme.dart',
              indentation: 3),
          MenuItem(
              name: 'Mobile',
              example: MobileThemeExample(exampleMenuNotifier),
              codeFile: 'lib/themes/default_themes/mobile_theme.dart',
              indentation: 3),
          MenuItem(
              name: 'Minimalist',
              example: MinimalistThemeExample(exampleMenuNotifier),
              codeFile: 'lib/themes/default_themes/minimalist_theme.dart',
              indentation: 3),
          MenuItem(
              name: 'New theme',
              example: ThemeFromScratchExample(),
              codeFile: 'lib/themes/theme_from_scratch.dart',
              indentation: 2)
        ];
      }));
}
