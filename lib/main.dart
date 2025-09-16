import 'package:demoflu/demoflu.dart';
import 'package:flutter/material.dart';
import 'package:tabbed_view_demo/pages/close_button_tooltip/close_button_tooltip_page.dart';
import 'package:tabbed_view_demo/pages/content_builder/content_builder_page.dart';
import 'package:tabbed_view_demo/pages/get_started/get_started_page.dart';
import 'package:tabbed_view_demo/pages/tab/button/icon_data/icon_data_page.dart';
import 'package:tabbed_view_demo/pages/tab/button/icon_path/icon_path_page.dart';
import 'package:tabbed_view_demo/pages/tab/button/menu/menu_page.dart';
import 'package:tabbed_view_demo/pages/tab/draggable/draggable_page.dart';
import 'package:tabbed_view_demo/pages/tab/keep_alive/keep_alive_page.dart';
import 'package:tabbed_view_demo/pages/tab/non_closable/non_closable_page.dart';
import 'package:tabbed_view_demo/pages/tab/tab_leading/tab_leading_page.dart';
import 'package:tabbed_view_demo/pages/tab/tab_programmatically/tab_programmatically_page.dart';
import 'package:tabbed_view_demo/pages/tab/tab_remove_interceptor/tab_remove_interceptor_page.dart';
import 'package:tabbed_view_demo/pages/tab/tab_remove_listener/tab_remove_listener_page.dart';
import 'package:tabbed_view_demo/pages/tab/tab_selection_listener/tab_selection_listener_page.dart';
import 'package:tabbed_view_demo/pages/tabs_area/tabs_area_buttons/tabs_area_buttons_page.dart';
import 'package:tabbed_view_demo/pages/theme/default_themes/classic_theme/classic_theme_page.dart';
import 'package:tabbed_view_demo/pages/theme/default_themes/minimalist_theme/minimalist_theme_page.dart';
import 'package:tabbed_view_demo/pages/theme/default_themes/underline_theme/underline_theme_page.dart';

void main() {
  DemoFluApp app =
      DemoFluApp(title: 'TabbedView (2.0.0)', rootMenus: _rootMenus);
  app.macro.widget('example', (context, section) {
    section
      ..title = 'Example'
      ..maxWidth = 600
      ..maxHeight = 300
      ..padding = EdgeInsets.all(32)
      ..solidBorder(color: Colors.grey[400]);
  });

  app.run();
}

List<DemoMenuItem> get _rootMenus =>
    [_getStarted, _contentBuilder, _tab, _tabsArea, _theme];

DemoMenuItem get _getStarted =>
    DemoMenuItem('Get started', page: () => GetStartedPage());
DemoMenuItem get _contentBuilder =>
    DemoMenuItem('Content builder', page: () => ContentBuilderPage());
DemoMenuItem get _tab => DemoMenuItem('Tab', children: [
      _tabButton,
      _draggable,
      _nonClosable,
      _closeButtonTooltip,
      _keepAlive,
      _selectionListener,
      _removeListener,
      _removeInterceptor,
      _tabLeading,
      _programmatically
    ]);
DemoMenuItem get _tabButton =>
    DemoMenuItem('Button', children: [_iconData, _iconPath, _tabMenu]);
DemoMenuItem get _iconData =>
    DemoMenuItem('Icon data', page: () => IconDataPage());
DemoMenuItem get _iconPath =>
    DemoMenuItem('Icon path', page: () => IconPathPage());
DemoMenuItem get _tabMenu => DemoMenuItem('Menu', page: () => MenuPage());
DemoMenuItem get _draggable =>
    DemoMenuItem('Draggable', page: () => DraggablePage());
DemoMenuItem get _nonClosable =>
    DemoMenuItem('Non-closable', page: () => NonClosablePage());
DemoMenuItem get _closeButtonTooltip =>
    DemoMenuItem('Close button tooltip', page: () => CloseButtonTooltipPage());
DemoMenuItem get _keepAlive =>
    DemoMenuItem('Keep alive', page: () => KeepAlivePage());
DemoMenuItem get _selectionListener =>
    DemoMenuItem('Selection listener', page: () => TabSelectionListenerPage());
DemoMenuItem get _removeListener =>
    DemoMenuItem('Remove listener', page: () => TabRemoveListenerPage());
DemoMenuItem get _removeInterceptor =>
    DemoMenuItem('Remove interceptor', page: () => TabRemoveInterceptorPage());
DemoMenuItem get _tabLeading =>
    DemoMenuItem('Leading', page: () => TabLeadingPage());
DemoMenuItem get _programmatically => DemoMenuItem('Changing programmatically',
    page: () => TabProgrammaticallyPage());
DemoMenuItem get _tabsArea =>
    DemoMenuItem('Tabs area', children: [_tabsAreaButtons]);
DemoMenuItem get _tabsAreaButtons =>
    DemoMenuItem('Buttons', page: () => TabsAreaButtonsPage());
DemoMenuItem get _theme => DemoMenuItem('Theme', children: [_defaultThemes]);
DemoMenuItem get _defaultThemes => DemoMenuItem('Default themes',
    children: [_classicTheme, _minimalistTheme, _underlineTheme]);
DemoMenuItem get _classicTheme =>
    DemoMenuItem('Classic theme', page: () => ClassicThemePage());
DemoMenuItem get _minimalistTheme =>
    DemoMenuItem('Minimalist theme', page: () => MinimalistThemePage());
DemoMenuItem get _underlineTheme =>
    DemoMenuItem('Underline theme', page: () => UnderlineThemePage());
