import 'package:demoflu/demoflu.dart';
import 'package:flutter/material.dart';
import 'package:tabbed_view_demo/pages/mixin_reload_example.dart';

import 'declarative_mode_example.dart';

class DeclarativeModePage extends DemoFluPage with MixinReloadExample {
  @override
  void buildSections(BuildContext context, PageSections sections) {
    sections.text(
        text:
            'In the declarative version, the tab state is managed externally by the caller, and the TabbedView only reflects that state without using a controller.');

    addReloadButton(context: context, sections: sections);

    sections.widget((context) => DeclarativeModeExample(key: exampleKey.value))
      ..listenable = exampleKey
      ..runMacro(id: 'example', context: context);

    sections
        .code('lib/pages/declarative_mode/declarative_mode_example.dart')
        .title = 'Code';
  }
}
