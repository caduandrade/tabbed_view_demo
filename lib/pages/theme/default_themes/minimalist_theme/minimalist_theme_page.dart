import 'package:demoflu/demoflu.dart';
import 'package:flutter/material.dart';
import 'package:tabbed_view/tabbed_view.dart';
import 'package:tabbed_view_demo/pages/theme/brightness_chooser.dart';
import 'package:tabbed_view_demo/pages/theme/position_chooser.dart';
import 'package:tabbed_view_demo/pages/theme/side_tabs_layout_chooser.dart';

import '../../../mixin_reload_example.dart';
import '../../color_set_chooser.dart';
import '../../double_chooser.dart';
import 'minimalist_theme_example.dart';

class MinimalistThemePage extends DemoFluPage with MixinReloadExample {
  ValueNotifier<Brightness> brightness = ValueNotifier(Brightness.light);
  ValueNotifier<TabBarPosition> tabBarPosition =
      ValueNotifier(TabBarPosition.top);
  ValueNotifier<SideTabsLayout> sideTabsLayout =
      ValueNotifier(SideTabsLayout.rotated);
  ValueNotifier<MaterialColor?> colorSet = ValueNotifier(null);
  ValueNotifier<double?> tabRadius = ValueNotifier(null);

  @override
  void buildSections(BuildContext context, PageSections sections) {
    addReloadButton(context: context, sections: sections);
    sections.widget((context) => Wrap(
            spacing: 56,
            runSpacing: 24,
            crossAxisAlignment: WrapCrossAlignment.start,
            children: [
              BrightnessChooser(brightness: brightness),
              PositionChooser(position: tabBarPosition),
              SideTabsLayoutChooser(
                  position: tabBarPosition, layout: sideTabsLayout),
              ColorSetChooser(title: 'ColorSet', colorSet: colorSet),
              DoubleChooser(
                title: 'TabRadius',
                value: tabRadius,
                values: [0, 5, 15],
              )
            ]));

    sections.widget((context) => MinimalistThemeExample(
        key: exampleKey.value,
        brightness: brightness.value,
        tabBarPosition: tabBarPosition.value,
        sideTabsLayout: sideTabsLayout.value,
        colorSet: colorSet.value,
        tabRadius: tabRadius.value))
      ..listenable = Listenable.merge([
        exampleKey,
        tabBarPosition,
        sideTabsLayout,
        brightness,
        colorSet,
        tabRadius
      ])
      ..runMacro(id: 'example', context: context)
      ..padding = null;

    sections.code(
        'lib/pages/theme/default_themes/minimalist_theme/minimalist_theme_example.dart',
        title: 'Code');
  }
}
