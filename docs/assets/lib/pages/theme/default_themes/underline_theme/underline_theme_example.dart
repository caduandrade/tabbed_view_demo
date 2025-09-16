import 'package:flutter/material.dart';
import 'package:tabbed_view/tabbed_view.dart';

class UnderlineThemeExample extends StatefulWidget {
  const UnderlineThemeExample(
      {super.key,
      required this.brightness,
      required this.tabBarPosition,
      required this.sideTabsLayout,
      required this.colorSet,
      required this.underlineColorSet});

  final Brightness brightness;
  final TabBarPosition tabBarPosition;
  final SideTabsLayout sideTabsLayout;
  final MaterialColor? colorSet;
  final MaterialColor? underlineColorSet;

  @override
  State<StatefulWidget> createState() => UnderlineThemeExampleState();
}

class UnderlineThemeExampleState extends State<UnderlineThemeExample> {
  final TabbedViewController _controller = TabbedViewController(
      [TabData(text: 'Tab 1'), TabData(text: 'Tab 2'), TabData(text: 'Tab 3')]);

  @override
  Widget build(BuildContext context) {
    final flutterTheme = ThemeData.from(
      colorScheme: ColorScheme.fromSeed(
        seedColor: Theme.of(context).colorScheme.primary,
        brightness: widget.brightness,
      ),
      useMaterial3: Theme.of(context).useMaterial3,
    );

    final TabbedViewThemeData theme = TabbedViewThemeData.underline(
        brightness: widget.brightness,
        colorSet: widget.colorSet,
        underlineColorSet: widget.underlineColorSet);
    theme.tabsArea.position = widget.tabBarPosition;
    theme.tabsArea.sideTabsLayout = widget.sideTabsLayout;

    return Theme(
      data: flutterTheme,
      child: Material(
        color: flutterTheme.colorScheme.surface,
        child: Padding(
          padding: EdgeInsets.all(32),
          child: TabbedViewTheme(
            data: theme,
            child: TabbedView(controller: _controller),
          ),
        ),
      ),
    );
  }
}
