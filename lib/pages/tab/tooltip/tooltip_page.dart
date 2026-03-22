import 'package:demoflu/demoflu.dart';
import 'package:flutter/material.dart';

import '../../mixin_reload_example.dart';
import 'tooltip_example.dart';

class TooltipPage extends DemoFluPage with MixinReloadExample {
  @override
  void buildSections(BuildContext context, PageSections sections) {
    addReloadButton(context: context, sections: sections);

    sections.widget((context) => TooltipExample(key: exampleKey.value))
      ..listenable = exampleKey
      ..runMacro(id: 'example', context: context);

    sections.code('lib/pages/tab/tooltip/tooltip_example.dart').title = 'Code';
  }
}
