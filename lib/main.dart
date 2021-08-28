import 'package:demoflu/demoflu.dart';
import 'package:flutter/material.dart';
import 'package:tabbed_view_demo/tab/adding_button/icon_data.dart';
import 'package:tabbed_view_demo/tab/adding_button/icon_path.dart';
import 'package:tabbed_view_demo/tab/adding_button/menu_button.dart';
import 'package:tabbed_view_demo/tab/adding_button/override_theme_color.dart';
import 'package:tabbed_view_demo/themes/default_themes/dark_theme_color_set.dart';
import 'package:tabbed_view_demo/themes/default_themes/minimalist_theme_color_set.dart';
import 'package:tabbed_view_demo/themes/default_themes/mobile_theme_color_set.dart';
import 'package:tabbed_view_demo/themes/default_themes/mobile_theme_highlight_color.dart';
import 'package:tabbed_view_demo/themes/tab/tab_alignment.dart';
import 'package:tabbed_view_demo/themes/tab/tab_text_style.dart';
import 'package:tabbed_view_demo/tab/draggable_tab.dart';
import 'package:tabbed_view_demo/tab/keep_alive.dart';
import 'package:tabbed_view_demo/tab/non_closable_tab.dart';
import 'package:tabbed_view_demo/tab/tab_close_interceptor.dart';
import 'package:tabbed_view_demo/tab/tab_close_listener.dart';
import 'package:tabbed_view_demo/tab/tab_selection_listener.dart';
import 'package:tabbed_view_demo/tabs_area/tabs_area_buttons.dart';
import 'package:tabbed_view_demo/themes/default_themes/dark_theme.dart';
import 'package:tabbed_view_demo/themes/default_themes/minimalist_theme.dart';
import 'package:tabbed_view_demo/themes/default_themes/mobile_theme.dart';
import 'package:tabbed_view_demo/themes/tabs_area/buttons_area/hidden_tabs_menu_button_icon.dart';
import 'package:tabbed_view_demo/themes/tabs_area/tabs_area_color.dart';
import 'package:tabbed_view_demo/themes/tabs_area/tabs_area_gaps.dart';
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
              name: 'Close interceptor',
              example: TabCloseInterceptorExample(),
              codeFile: 'lib/tab/tab_close_interceptor.dart',
              indentation: 2),
          MenuItem(
              name: 'Close listener',
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
          MenuItem(
              name: 'Keep alive',
              example: KeepAliveExample(),
              codeFile: 'lib/tab/keep_alive.dart',
              indentation: 2),
          MenuItem(name: 'Tabs area', italic: true),
          MenuItem(
              name: 'Buttons',
              example: TabsAreaButtonsExample(),
              codeFile: 'lib/tabs_area/tabs_area_buttons.dart',
              indentation: 2),
          MenuItem(name: 'Themes', italic: true),
          MenuItem(name: 'Tab', italic: true, indentation: 2),
          MenuItem(
              name: 'Text style',
              example: TabTextStyleExample(),
              codeFile: 'lib/themes/tab/tab_text_style.dart',
              indentation: 3),
          MenuItem(
              name: 'Alignment',
              example: TabAlignmentExample(),
              codeFile: 'lib/themes/tab/tab_alignment.dart',
              indentation: 3),
          MenuItem(name: 'Tabs area', italic: true, indentation: 2),
          MenuItem(
              name: 'Color',
              example: TabsAreaColorExample(),
              codeFile: 'lib/themes/tabs_area/tabs_area_color.dart',
              indentation: 3),
          MenuItem(
              name: 'Tab gaps',
              example: TabsAreaGapsPage(),
              codeFile: 'lib/themes/tabs_area/tabs_area_gaps.dart',
              indentation: 3),
          MenuItem(name: 'Buttons area', italic: true, indentation: 3),
          MenuItem(
              name: 'Menu button',
              example: HiddenTabsMenuButtonIconExample(),
              codeFile:
                  'lib/themes/tabs_area/buttons_area/hidden_tabs_menu_button_icon.dart',
              indentation: 4),
          MenuItem(name: 'Menu', italic: true, indentation: 2),
          MenuItem(name: 'Default themes', italic: true, indentation: 2),
          MenuItem(
              name: 'Dark',
              example: DarkThemeExample(),
              codeFile: 'lib/themes/default_themes/dark_theme.dart',
              indentation: 3),
          MenuItem(
              name: 'Color set',
              example: DarkThemeColorSetExample(),
              codeFile: 'lib/themes/default_themes/dark_theme_color_set.dart',
              indentation: 4),
          MenuItem(
              name: 'Mobile',
              example: MobileThemeExample(),
              codeFile: 'lib/themes/default_themes/mobile_theme.dart',
              indentation: 3),
          MenuItem(
              name: 'Color set',
              example: MobileThemeColorSetExample(),
              codeFile: 'lib/themes/default_themes/mobile_theme_color_set.dart',
              indentation: 4),
          MenuItem(
              name: 'Highlight color',
              example: MobileThemeHighlightColorExample(),
              codeFile:
                  'lib/themes/default_themes/mobile_theme_highlight_color.dart',
              indentation: 4),
          MenuItem(
              name: 'Minimalist',
              example: MinimalistThemeExample(),
              codeFile: 'lib/themes/default_themes/minimalist_theme.dart',
              indentation: 3),
          MenuItem(
              name: 'Color set',
              example: MinimalistThemeColorSetExample(),
              codeFile:
                  'lib/themes/default_themes/minimalist_theme_color_set.dart',
              indentation: 4),
          MenuItem(
              name: 'New theme',
              example: ThemeFromScratchExample(),
              codeFile: 'lib/themes/theme_from_scratch.dart',
              indentation: 2)
        ];
      }));
}
