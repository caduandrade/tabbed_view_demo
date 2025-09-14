import 'package:demoflu/demoflu.dart';
import 'package:flutter/material.dart';
import 'package:tabbed_view_demo/pages/close_button_tooltip/close_button_tooltip_example.dart';

import '../mixin_reload_example.dart';

class CloseButtonTooltipPage extends DemoFluPage with MixinReloadExample {
  @override
  void buildSections(BuildContext context, PageSections sections) {
    addReloadButton(context: context, sections: sections);

    sections
        .widget((context) => CloseButtonTooltipExample(key: exampleKey.value))
      ..listenable = exampleKey
      ..runMacro(id: 'example', context: context);

    sections.code(
        'lib/pages/close_button_tooltip/close_button_tooltip_example.dart',
        title: 'Code',
        mark: 'code',
        loadMode: LoadMode.readOnlyMarked);
  }
}
