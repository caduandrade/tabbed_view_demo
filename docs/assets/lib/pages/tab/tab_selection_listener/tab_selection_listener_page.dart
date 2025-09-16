import 'package:demoflu/demoflu.dart';
import 'package:flutter/material.dart';
import 'package:tabbed_view_demo/pages/tab/tab_selection_listener/tab_selection_listener_example.dart';
import '../../mixin_reload_example.dart';

class TabSelectionListenerPage extends DemoFluPage with MixinReloadExample {
  @override
  void buildSections(BuildContext context, PageSections sections) {
    addReloadButton(context: context, sections: sections);

    sections
        .widget((context) => TabSelectionListenerExample(key: exampleKey.value))
      ..listenable = exampleKey
      ..runMacro(id: 'example', context: context);

    sections.console();

    sections.code(
        'lib/pages/tab/tab_selection_listener/tab_selection_listener_example.dart',
        title: 'Code',
        mark: 'example',
        loadMode: LoadMode.readOnlyMarked);
  }
}
