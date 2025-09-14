import 'package:demoflu/demoflu.dart';
import 'package:flutter/material.dart';

import '../../mixin_reload_example.dart';
import 'non_closable_example.dart';

class NonClosablePage extends DemoFluPage with MixinReloadExample {
  @override
  void buildSections(BuildContext context, PageSections sections) {
    addReloadButton(context: context, sections: sections);

    sections.widget((context) => NonClosableExample(key: exampleKey.value))
      ..listenable = exampleKey
      ..runMacro(id: 'example', context: context);

    sections.code('lib/pages/tab/non_closable/non_closable_example.dart',
        title: 'Code', mark: 'example', loadMode: LoadMode.readOnlyMarked);
  }
}
