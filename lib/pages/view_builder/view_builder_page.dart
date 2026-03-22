import 'package:demoflu/demoflu.dart';
import 'package:flutter/material.dart';
import 'package:tabbed_view_demo/pages/view_builder/view_builder_example.dart';
import 'package:tabbed_view_demo/pages/mixin_reload_example.dart';

class ViewBuilderPage extends DemoFluPage with MixinReloadExample {
  @override
  void buildSections(BuildContext context, PageSections sections) {
    addReloadButton(context: context, sections: sections);

    sections.widget((context) => ViewBuilderExample(key: exampleKey.value))
      ..listenable = exampleKey
      ..runMacro(id: 'example', context: context);

    sections.code('lib/pages/view_builder/view_builder_example.dart').title =
        'Code';
  }
}
