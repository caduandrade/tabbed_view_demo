import 'package:demoflu/demoflu.dart';
import 'package:flutter/material.dart';

import '../../mixin_reload_example.dart';
import 'draggable_example.dart';
import 'tab_drag_target.dart';

class DraggablePage extends DemoFluPage with MixinReloadExample {
  @override
  void buildSections(BuildContext context, PageSections sections) {
    addReloadButton(context: context, sections: sections);

    sections.widget((context) => DraggableExample(key: exampleKey.value))
      ..listenable = exampleKey
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
