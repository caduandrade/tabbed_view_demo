import 'package:demoflu/demoflu.dart';
import 'package:flutter/material.dart';
import 'package:tabbed_view_demo/pages/content_builder/content_builder_example.dart';

class ContentBuilderPage extends DemoFluPage {
  final ValueNotifier<Key> _exampleKey = ValueNotifier(UniqueKey());

  @override
  void buildSections(BuildContext context, PageSections sections) {
    sections.widget((context) => TextButton(
        onPressed: () => _exampleKey.value = UniqueKey(),
        child: Text('Reload example')));

    sections.widget((context) => ContentBuilderExample(key: _exampleKey.value))
      ..listenable = _exampleKey
      ..runMacro(id: 'example', context: context);

    sections
        .code('lib/pages/content_builder/content_builder_example.dart')
        .title = 'Code';
  }
}
