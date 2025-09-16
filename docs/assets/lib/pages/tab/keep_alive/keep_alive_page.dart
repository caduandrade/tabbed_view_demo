import 'package:demoflu/demoflu.dart';
import 'package:flutter/material.dart';

import '../../mixin_reload_example.dart';
import 'keep_alive_example.dart';

class KeepAlivePage extends DemoFluPage with MixinReloadExample {
  @override
  void buildSections(BuildContext context, PageSections sections) {
    addReloadButton(context: context, sections: sections);

    sections.widget((context) => KeepAliveExample(key: exampleKey.value))
      ..listenable = exampleKey
      ..runMacro(id: 'example', context: context);

    sections.code('lib/pages/tab/keep_alive/keep_alive_example.dart',
        title: 'Code', mark: 'example', loadMode: LoadMode.readOnlyMarked);
  }
}
