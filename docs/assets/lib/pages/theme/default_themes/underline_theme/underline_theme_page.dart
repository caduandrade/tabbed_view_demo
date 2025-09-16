import 'package:demoflu/demoflu.dart';
import 'package:flutter/material.dart';
import 'package:tabbed_view/tabbed_view.dart';
import 'package:tabbed_view_demo/pages/theme/brightness_chooser.dart';
import 'package:tabbed_view_demo/pages/theme/default_themes/underline_theme/underline_theme_example.dart';
import 'package:tabbed_view_demo/pages/theme/position_chooser.dart';
import 'package:tabbed_view_demo/pages/theme/side_tabs_layout_chooser.dart';

import '../../../mixin_reload_example.dart';
import '../../color_set_chooser.dart';

class UnderlineThemePage extends DemoFluPage with MixinReloadExample {
  ValueNotifier<Brightness> brightness = ValueNotifier(Brightness.light);
  ValueNotifier<TabBarPosition> tabBarPosition =
      ValueNotifier(TabBarPosition.top);
  ValueNotifier<SideTabsLayout> sideTabsLayout =
      ValueNotifier(SideTabsLayout.rotated);
  ValueNotifier<MaterialColor?> colorSet = ValueNotifier(null);
  ValueNotifier<MaterialColor?> underlineColorSet = ValueNotifier(null);

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
              ColorSetChooser(
                  title: 'UnderlineColorSet', colorSet: underlineColorSet)
            ]));

    sections.widget((context) => UnderlineThemeExample(
          key: exampleKey.value,
          brightness: brightness.value,
          tabBarPosition: tabBarPosition.value,
          sideTabsLayout: sideTabsLayout.value,
          colorSet: colorSet.value,
          underlineColorSet: underlineColorSet.value,
        ))
      ..listenable = Listenable.merge([
        exampleKey,
        tabBarPosition,
        sideTabsLayout,
        brightness,
        colorSet,
        underlineColorSet
      ])
      ..runMacro(id: 'example', context: context)
      ..padding = null;

    sections.code(
        'lib/pages/theme/default_themes/underline_theme/underline_theme_example.dart',
        title: 'Code');
  }
}
