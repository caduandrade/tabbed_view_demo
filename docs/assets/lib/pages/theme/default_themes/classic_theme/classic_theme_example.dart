import 'package:flutter/material.dart';
import 'package:tabbed_view/tabbed_view.dart';

class ClassicThemeExample extends StatefulWidget {
  const ClassicThemeExample(
      {super.key,
      required this.brightness,
      required this.tabBarPosition,
      required this.sideTabsLayout,
      required this.colorSet,
      required this.borderColor,
      required this.tabRadius});

  final Brightness brightness;
  final TabBarPosition tabBarPosition;
  final SideTabsLayout sideTabsLayout;
  final MaterialColor? colorSet;
  final Color? borderColor;
  final double? tabRadius;

  @override
  State<StatefulWidget> createState() => ClassicThemeExampleState();
}

class ClassicThemeExampleState extends State<ClassicThemeExample> {
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

    final TabbedViewThemeData theme = TabbedViewThemeData.classic(
        brightness: widget.brightness,
        colorSet: widget.colorSet,
        borderColor: widget.borderColor,
        tabRadius: widget.tabRadius);
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
