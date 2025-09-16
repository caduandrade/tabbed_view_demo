import 'package:demoflu/demoflu.dart';
import 'package:flutter/material.dart';
import 'package:tabbed_view_demo/pages/tabs_area/tabs_area_buttons/tabs_area_buttons_example.dart';
import '../../mixin_reload_example.dart';

class TabsAreaButtonsPage extends DemoFluPage with MixinReloadExample {
  @override
  void buildSections(BuildContext context, PageSections sections) {
    addReloadButton(context: context, sections: sections);

    sections.widget((context) => TabsAreaButtonsExample(key: exampleKey.value))
      ..listenable = exampleKey
      ..runMacro(id: 'example', context: context);

    sections.code(
        'lib/pages/tabs_area/tabs_area_buttons/tabs_area_buttons_example.dart',
        title: 'Code',
        mark: 'example',
        loadMode: LoadMode.readOnlyMarked);
  }
}
