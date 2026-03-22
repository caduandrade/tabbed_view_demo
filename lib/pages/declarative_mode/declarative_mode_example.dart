import 'package:flutter/material.dart';
import 'package:tabbed_view/tabbed_view.dart';

class DeclarativeModeExample extends StatefulWidget {
  const DeclarativeModeExample({super.key});

  @override
  State<StatefulWidget> createState() => DeclarativeModeExampleState();
}

class DeclarativeModeExampleState extends State<DeclarativeModeExample> {
  final List<MyData> _myDataList = [
    MyData(id: 1, name: 'Purple', color: Colors.purple),
    MyData(id: 2, name: 'Blue', color: Colors.blue),
    MyData(id: 3, name: 'Green', color: Colors.green),
    MyData(id: 4, name: 'Yellow', color: Colors.yellow),
    MyData(id: 5, name: 'Orange', color: Colors.orange)
  ];
  Object? _selectedTabId = 2;

  @override
  Widget build(BuildContext context) {
    final List<TabData> tabs = _myDataList
        .map((myData) => TabData(
              id: myData.id,
              text: myData.name,
              value: myData,
            ))
        .toList();
    return TabbedView.declarative(
        tabs: tabs,
        selectedTabId: _selectedTabId,
        onTabSelect: (TabData tab) {
          setState(() {
            _selectedTabId = tab.id;
          });
        },
        onTabClose: (TabData tab) {
          setState(() {
            _myDataList.removeWhere((data) => data.id == tab.id);
            if (_myDataList.isNotEmpty) {
              _selectedTabId = _myDataList.first.id;
            }
          });
        },
        onTabReorder: (TabData tab, TabData? targetTab) {
          setState(() {
            int sourceIndex =
                _myDataList.indexWhere((data) => data.id == tab.id);
            MyData data = _myDataList[sourceIndex];
            _myDataList.removeAt(sourceIndex);
            int targetIndex = targetTab == null
                ? _myDataList.length
                : _myDataList.indexWhere((data) => data.id == targetTab.id);
            _myDataList.insert(targetIndex, data);
          });
        },
        viewBuilder: (BuildContext context, TabData tab) {
          MyData myData = tab.value as MyData;
          return Center(
              child: Container(
                  width: 64,
                  height: 64,
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.grey.shade900),
                    color: myData.color,
                  )));
        });
  }
}

class MyData {
  MyData({required this.id, required this.name, required this.color});

  final int id;
  final String name;
  final Color color;
}
