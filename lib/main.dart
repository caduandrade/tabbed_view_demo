import 'package:demoflu/demoflu.dart';
import 'package:flutter/material.dart';
import 'package:tabbed_view_demo/tab/adding_button/icon_data.dart';
import 'package:tabbed_view_demo/tab/adding_button/icon_path.dart';
import 'package:tabbed_view_demo/tab/adding_button/menu_button.dart';
import 'package:tabbed_view_demo/tab/adding_button/override_theme_color.dart';
import 'package:tabbed_view_demo/tab/draggable_tab.dart';
import 'package:tabbed_view_demo/tab/keep_alive.dart';
import 'package:tabbed_view_demo/tab/non_closable_tab.dart';
import 'package:tabbed_view_demo/tab/tab_close_interceptor.dart';
import 'package:tabbed_view_demo/tab/tab_close_listener.dart';
import 'package:tabbed_view_demo/tab/tab_programmatically.dart';
import 'package:tabbed_view_demo/tab/tab_selection_listener.dart';
import 'package:tabbed_view_demo/tabs_area/tabs_area_buttons.dart';
import 'package:tabbed_view_demo/themes/default_themes/classic_theme.dart';
import 'package:tabbed_view_demo/themes/default_themes/classic_theme_color_set.dart';
import 'package:tabbed_view_demo/themes/default_themes/dark_theme.dart';
import 'package:tabbed_view_demo/themes/default_themes/dark_theme_color_set.dart';
import 'package:tabbed_view_demo/themes/default_themes/minimalist_theme.dart';
import 'package:tabbed_view_demo/themes/default_themes/minimalist_theme_color_set.dart';
import 'package:tabbed_view_demo/themes/default_themes/mobile_theme.dart';
import 'package:tabbed_view_demo/themes/default_themes/mobile_theme_color_set.dart';
import 'package:tabbed_view_demo/themes/default_themes/mobile_theme_highlight_color.dart';
import 'package:tabbed_view_demo/themes/menu/menu_ellipsis.dart';
import 'package:tabbed_view_demo/themes/menu/menu_max_width.dart';
import 'package:tabbed_view_demo/themes/tab/tab_alignment.dart';
import 'package:tabbed_view_demo/themes/tab/tab_text_style.dart';
import 'package:tabbed_view_demo/themes/tabs_area/buttons_area/hidden_tabs_menu_button_icon.dart';
import 'package:tabbed_view_demo/themes/tabs_area/tabs_area_color.dart';
import 'package:tabbed_view_demo/themes/tabs_area/tabs_area_gaps.dart';
import 'package:tabbed_view_demo/themes/theme_from_scratch.dart';

import 'get_started/close_button_tooltip.dart';
import 'get_started/content_builder.dart';
import 'get_started/get_started.dart';

void main() {
  Size? maxSize;
  // maxSize = Size(500, 300);
  runApp(DemoFluApp(
      resizable: true,
      initialWidthWeight: .95,
      initialHeightWeight: .95,
      maxSize: maxSize,
      title: 'Tabbed view (1.15.0)',
      widgetBackground: Colors.white,
      appMenuBuilder: () {
        return [
          DemoMenuItem(
              name: 'Get started',
              builder: () => GetStartedExample(),
              codeFile: 'lib/get_started/get_started.dart'),
          DemoMenuItem(
              name: 'Content builder',
              builder: () => ContentBuilderExample(),
              codeFile: 'lib/get_started/content_builder.dart',
              indentation: 2),
          DemoMenuItem(
              name: 'Close button tooltip',
              builder: () => CloseButtonTooltipExample(),
              codeFile: 'lib/get_started/close_button_tooltip.dart',
              indentation: 2),
          DemoMenuItem(name: 'Tab', italic: true),
          DemoMenuItem(name: 'Adding button', italic: true, indentation: 2),
          DemoMenuItem(
              name: 'Icon data',
              builder: () => IconDataExample(),
              codeFile: 'lib/tab/adding_button/icon_data.dart',
              indentation: 3),
          DemoMenuItem(
              name: 'Icon path',
              builder: () => IconPathExample(),
              codeFile: 'lib/tab/adding_button/icon_path.dart',
              indentation: 3),
          DemoMenuItem(
              name: 'Override theme color',
              builder: () => OverrideThemeColorExample(),
              codeFile: 'lib/tab/adding_button/override_theme_color.dart',
              indentation: 3),
          DemoMenuItem(
              name: 'Menu button',
              builder: () => MenuButtonExample(),
              codeFile: 'lib/tab/adding_button/menu_button.dart',
              indentation: 3),
          DemoMenuItem(
              name: 'Non-closable tab',
              builder: () => NonClosableExample(),
              codeFile: 'lib/tab/non_closable_tab.dart',
              indentation: 2),
          DemoMenuItem(
              name: 'Close interceptor',
              builder: () => TabCloseInterceptorExample(),
              codeFile: 'lib/tab/tab_close_interceptor.dart',
              consoleEnabled: true,
              indentation: 2),
          DemoMenuItem(
              name: 'Close listener',
              builder: () => TabCloseListenerExample(),
              codeFile: 'lib/tab/tab_close_listener.dart',
              consoleEnabled: true,
              indentation: 2),
          DemoMenuItem(
              name: 'Selection listener',
              builder: () => TabSelectionListenerExample(),
              codeFile: 'lib/tab/tab_selection_listener.dart',
              consoleEnabled: true,
              indentation: 2),
          DemoMenuItem(
              name: 'Draggable',
              builder: () => DraggableTabExample(),
              codeFile: 'lib/tab/draggable_tab.dart',
              indentation: 2),
          DemoMenuItem(
              name: 'Keep alive',
              builder: () => KeepAliveExample(),
              codeFile: 'lib/tab/keep_alive.dart',
              indentation: 2),
          DemoMenuItem(
              name: 'Using programmatically',
              builder: () => TabProgrammaticallyExample(),
              codeFile: 'lib/tab/tab_programmatically.dart',
              indentation: 2),
          DemoMenuItem(name: 'Tabs area', italic: true),
          DemoMenuItem(
              name: 'Buttons',
              builder: () => TabsAreaButtonsExample(),
              codeFile: 'lib/tabs_area/tabs_area_buttons.dart',
              indentation: 2),
          DemoMenuItem(name: 'Themes', italic: true),
          DemoMenuItem(name: 'Tab', italic: true, indentation: 2),
          DemoMenuItem(
              name: 'Text style',
              builder: () => TabTextStyleExample(),
              codeFile: 'lib/themes/tab/tab_text_style.dart',
              indentation: 3),
          DemoMenuItem(
              name: 'Alignment',
              builder: () => TabAlignmentExample(),
              codeFile: 'lib/themes/tab/tab_alignment.dart',
              indentation: 3),
          DemoMenuItem(name: 'Tabs area', italic: true, indentation: 2),
          DemoMenuItem(
              name: 'Color',
              builder: () => TabsAreaColorExample(),
              codeFile: 'lib/themes/tabs_area/tabs_area_color.dart',
              indentation: 3),
          DemoMenuItem(
              name: 'Tab gaps',
              builder: () => TabsAreaGapsPage(),
              codeFile: 'lib/themes/tabs_area/tabs_area_gaps.dart',
              indentation: 3),
          DemoMenuItem(name: 'Buttons area', italic: true, indentation: 3),
          DemoMenuItem(
              name: 'Menu button',
              builder: () => HiddenTabsMenuButtonIconExample(),
              codeFile:
                  'lib/themes/tabs_area/buttons_area/hidden_tabs_menu_button_icon.dart',
              indentation: 4),
          DemoMenuItem(name: 'Menu', italic: true, indentation: 2),
          DemoMenuItem(
              name: 'Max width',
              builder: () => MenuMaxWidthExample(),
              codeFile: 'lib/themes/menu/menu_max_width.dart',
              indentation: 3),
          DemoMenuItem(
              name: 'Ellipsis on text overflow',
              builder: () => MenuEllipsisExample(),
              codeFile: 'lib/themes/menu/menu_ellipsis.dart',
              indentation: 3),
          DemoMenuItem(name: 'Default themes', italic: true, indentation: 2),
          DemoMenuItem(
              name: 'Classic',
              builder: () => ClassicThemeExample(),
              codeFile: 'lib/themes/default_themes/classic_theme.dart',
              indentation: 3),
          DemoMenuItem(
              name: 'Color set',
              builder: () => ClassicThemeColorSetExample(),
              codeFile:
                  'lib/themes/default_themes/classic_theme_color_set.dart',
              indentation: 4),
          DemoMenuItem(
              name: 'Dark',
              builder: () => DarkThemeExample(),
              codeFile: 'lib/themes/default_themes/dark_theme.dart',
              indentation: 3),
          DemoMenuItem(
              name: 'Color set',
              builder: () => DarkThemeColorSetExample(),
              codeFile: 'lib/themes/default_themes/dark_theme_color_set.dart',
              indentation: 4),
          DemoMenuItem(
              name: 'Mobile',
              builder: () => MobileThemeExample(),
              codeFile: 'lib/themes/default_themes/mobile_theme.dart',
              indentation: 3),
          DemoMenuItem(
              name: 'Color set',
              builder: () => MobileThemeColorSetExample(),
              codeFile: 'lib/themes/default_themes/mobile_theme_color_set.dart',
              indentation: 4),
          DemoMenuItem(
              name: 'Highlight color',
              builder: () => MobileThemeHighlightColorExample(),
              codeFile:
                  'lib/themes/default_themes/mobile_theme_highlight_color.dart',
              indentation: 4),
          DemoMenuItem(
              name: 'Minimalist',
              builder: () => MinimalistThemeExample(),
              codeFile: 'lib/themes/default_themes/minimalist_theme.dart',
              indentation: 3),
          DemoMenuItem(
              name: 'Color set',
              builder: () => MinimalistThemeColorSetExample(),
              codeFile:
                  'lib/themes/default_themes/minimalist_theme_color_set.dart',
              indentation: 4),
          DemoMenuItem(
              name: 'Theme from scratch',
              builder: () => ThemeFromScratchExample(),
              codeFile: 'lib/themes/theme_from_scratch.dart',
              indentation: 2)
        ];
      }));
}
