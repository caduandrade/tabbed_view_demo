import 'package:demoflu/demoflu.dart';
import 'package:flutter/material.dart';
import 'package:tabbed_view_demo/pages/tab/tab_selection_interceptor/tab_selection_interceptor_example.dart';

import '../../mixin_reload_example.dart';

class TabSelectionInterceptorPage extends DemoFluPage with MixinReloadExample {
  @override
  void buildSections(BuildContext context, PageSections sections) {
    addReloadButton(context: context, sections: sections);

    sections.widget(
        (context) => TabSelectionInterceptorExample(key: exampleKey.value))
      ..listenable = exampleKey
      ..runMacro(id: 'example', context: context);

    sections.code(
        'lib/pages/tab/tab_selection_interceptor/tab_selection_interceptor_example.dart',
        title: 'Code',
        mark: 'example',
        loadMode: LoadMode.readOnlyMarked);
  }
}
