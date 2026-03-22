import 'package:demoflu/demoflu.dart';
import 'package:flutter/material.dart';

import '../../mixin_reload_example.dart';
import 'individual_tab_theming_example.dart';

class IndividualTabThemingPage extends DemoFluPage with MixinReloadExample {
  @override
  void buildSections(BuildContext context, PageSections sections) {
    addReloadButton(context: context, sections: sections);

    sections
        .widget((context) => IndividualTabThemingExample(key: exampleKey.value))
      ..listenable = exampleKey
      ..runMacro(id: 'example', context: context);

    sections
        .code(
            'lib/pages/theme/individual_tab_theming/individual_tab_theming_example.dart')
        .title = 'Code';
  }
}
