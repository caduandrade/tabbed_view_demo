import 'package:demoflu/demoflu.dart';
import 'package:flutter/material.dart';

import '../../mixin_reload_example.dart';
import 'max_tab_size_example.dart';

class MaxTabSizePage extends DemoFluPage with MixinReloadExample {
  @override
  void buildSections(BuildContext context, PageSections sections) {
    addReloadButton(context: context, sections: sections);

    sections.widget((context) => MaxTabSizeExample(key: exampleKey.value))
      ..listenable = exampleKey
      ..runMacro(id: 'example', context: context);

    sections
        .code('lib/pages/theme/max_tab_size/max_tab_size_example.dart')
        .title = 'Code';
  }
}
