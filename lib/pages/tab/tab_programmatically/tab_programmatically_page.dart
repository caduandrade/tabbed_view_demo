import 'package:demoflu/demoflu.dart';
import 'package:flutter/material.dart';
import 'package:tabbed_view_demo/pages/tab/tab_programmatically/tab_programmatically_example.dart';
import '../../mixin_reload_example.dart';

class TabProgrammaticallyPage extends DemoFluPage with MixinReloadExample {
  @override
  void buildSections(BuildContext context, PageSections sections) {
    addReloadButton(context: context, sections: sections);

    sections
        .widget((context) => TabProgrammaticallyExample(key: exampleKey.value))
      ..listenable = exampleKey
      ..runMacro(id: 'example', context: context);

    sections.console(title: 'Console');

    sections.code(
        'lib/pages/tab/tab_programmatically/tab_programmatically_example.dart',
        title: 'Code',
        mark: 'example',
        loadMode: LoadMode.readOnlyMarked);
  }
}
