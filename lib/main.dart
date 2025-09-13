import 'package:demoflu/demoflu.dart';
import 'package:flutter/material.dart';
import 'package:tabbed_view_demo/pages/close_button_tooltip/close_button_tooltip_page.dart';
import 'package:tabbed_view_demo/pages/content_builder/content_builder_page.dart';
import 'package:tabbed_view_demo/pages/get_started/get_started_page.dart';
import 'package:tabbed_view_demo/pages/tab/button/icon_data/icon_data_page.dart';
import 'package:tabbed_view_demo/pages/tab/button/icon_path/icon_path_page.dart';
import 'package:tabbed_view_demo/pages/tab/button/menu/menu_page.dart';
import 'package:tabbed_view_demo/pages/tab/draggable/draggable_page.dart';

void main() {
  DemoFluApp app =
      DemoFluApp(title: 'TabbedView (2.0.0-rc.7)', rootMenus: _rootMenus);
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
    [_getStarted, _contentBuilder, _closeButtonTooltip, _tab];

DemoMenuItem get _getStarted =>
    DemoMenuItem('Get started', page: () => GetStartedPage());
DemoMenuItem get _contentBuilder =>
    DemoMenuItem('Content builder', page: () => ContentBuilderPage());
DemoMenuItem get _closeButtonTooltip =>
    DemoMenuItem('Close button tooltip', page: () => CloseButtonTooltipPage());
DemoMenuItem get _tab =>
    DemoMenuItem('Tab', children: [_tabButton, _draggable]);
DemoMenuItem get _tabButton =>
    DemoMenuItem('Button', children: [_iconData, _iconPath, _tabMenu]);
DemoMenuItem get _iconData =>
    DemoMenuItem('Icon data', page: () => IconDataPage());
DemoMenuItem get _iconPath =>
    DemoMenuItem('Icon path', page: () => IconPathPage());
DemoMenuItem get _tabMenu => DemoMenuItem('Menu', page: () => MenuPage());
DemoMenuItem get _draggable =>
    DemoMenuItem('Draggable', page: () => DraggablePage());
