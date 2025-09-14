import 'package:demoflu/demoflu.dart';
import 'package:flutter/material.dart';
import 'package:tabbed_view_demo/pages/tab/button/icon_data/icon_data_example.dart';

import '../../../mixin_reload_example.dart';

class IconDataPage extends DemoFluPage with MixinReloadExample {
  @override
  void buildSections(BuildContext context, PageSections sections) {
    addReloadButton(context: context, sections: sections);

    sections.widget((context) => IconDataExample(key: exampleKey.value))
      ..listenable = exampleKey
      ..runMacro(id: 'example', context: context);

    sections.code('lib/pages/tab/button/icon_data/icon_data_example.dart',
        title: 'Code');
  }
}
