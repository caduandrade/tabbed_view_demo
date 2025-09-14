import 'package:demoflu/demoflu.dart';
import 'package:flutter/material.dart';
import 'package:tabbed_view_demo/pages/tab/button/menu/menu_example.dart';

import '../../../mixin_reload_example.dart';

class MenuPage extends DemoFluPage with MixinReloadExample {
  final ValueNotifier<Key> _exampleKey = ValueNotifier(UniqueKey());

  @override
  void buildSections(BuildContext context, PageSections sections) {
    addReloadButton(context: context, sections: sections);

    sections.widget((context) => MenuExample(key: exampleKey.value))
      ..listenable = exampleKey
      ..runMacro(id: 'example', context: context);

    sections.code('lib/pages/tab/button/menu/menu_example.dart', title: 'Code');
  }
}
