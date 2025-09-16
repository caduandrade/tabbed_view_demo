import 'package:demoflu/demoflu.dart';
import 'package:flutter/material.dart';

mixin MixinReloadExample {
  final ValueNotifier<Key> exampleKey = ValueNotifier(UniqueKey());

  void addReloadButton(
      {required BuildContext context, required PageSections sections}) {
    sections.widget((context) => TextButton(
        onPressed: () => exampleKey.value = UniqueKey(),
        child: Text('Reload example')));
  }
}
