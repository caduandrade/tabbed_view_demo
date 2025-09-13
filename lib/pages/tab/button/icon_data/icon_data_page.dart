import 'package:demoflu/demoflu.dart';
import 'package:flutter/material.dart';
import 'package:tabbed_view_demo/pages/tab/button/icon_data/icon_data_example.dart';

class IconDataPage extends DemoFluPage {
  final ValueNotifier<Key> _exampleKey = ValueNotifier(UniqueKey());

  @override
  void buildSections(BuildContext context, PageSections sections) {
    sections.widget((context) => TextButton(
        onPressed: () => _exampleKey.value = UniqueKey(),
        child: Text('Reload example')));

    sections.widget((context) => IconDataExample(key: _exampleKey.value))
      ..listenable = _exampleKey
      ..runMacro(id: 'example', context: context);

    sections.code('lib/pages/tab/button/icon_data/icon_data_example.dart',
        title: 'Code');
  }
}
