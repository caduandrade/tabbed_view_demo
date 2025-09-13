import 'package:demoflu/demoflu.dart';
import 'package:flutter/material.dart';

import 'draggable_example.dart';
import 'tab_drag_target.dart';

class DraggablePage extends DemoFluPage {
  final ValueNotifier<Key> _exampleKey = ValueNotifier(UniqueKey());

  @override
  void buildSections(BuildContext context, PageSections sections) {
    sections.widget((context) => TextButton(
        onPressed: () => _exampleKey.value = UniqueKey(),
        child: Text('Reload example')));

    sections.widget((context) => DraggableExample(key: _exampleKey.value))
      ..listenable = _exampleKey
      ..runMacro(id: 'example', context: context);

    sections.widget((context) => TabDragTarget());

    sections.code('lib/pages/tab/draggable/draggable_example.dart',
        title: 'Controller',
        mark: 'example',
        loadMode: LoadMode.readOnlyMarked);

    sections.code('lib/pages/tab/draggable/tab_drag_target.dart',
        title: 'Drag target');
  }
}
