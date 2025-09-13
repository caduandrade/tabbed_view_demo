import 'package:demoflu/demoflu.dart';
import 'package:flutter/material.dart';
import 'package:tabbed_view_demo/pages/close_button_tooltip/close_button_tooltip_example.dart';

class CloseButtonTooltipPage extends DemoFluPage {
  final ValueNotifier<Key> _exampleKey = ValueNotifier(UniqueKey());

  @override
  void buildSections(BuildContext context, PageSections sections) {
    sections.widget((context) => TextButton(
        onPressed: () => _exampleKey.value = UniqueKey(),
        child: Text('Reload example')));

    sections
        .widget((context) => CloseButtonTooltipExample(key: _exampleKey.value))
      ..listenable = _exampleKey
      ..runMacro(id: 'example', context: context);

    sections.code(
        'lib/pages/close_button_tooltip/close_button_tooltip_example.dart',
        title: 'Code',
        mark: 'code',
        loadMode: LoadMode.readOnlyMarked);
  }
}
