import 'package:flutter/material.dart';
import 'package:tabbed_view/tabbed_view.dart';

class TabDragTarget extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => TabDragTargetState();
}

class TabDragTargetState extends State<TabDragTarget> {
  dynamic _acceptedData;

  @override
  Widget build(BuildContext context) {
    return DragTarget<DraggableData>(
      builder: (
        BuildContext context,
        List<dynamic> accepted,
        List<dynamic> rejected,
      ) {
        return Container(
          padding: EdgeInsets.all(8),
          color: Colors.yellow[100],
          child: Center(
              child: ListTile(
                  title: Text('Drop here'),
                  subtitle: Text('Last tab value: ${_acceptedData ?? ''}'))),
        );
      },
      onAcceptWithDetails: (details) {
        final DraggableData data = details.data;
        setState(() {
          _acceptedData = data.tabData.value;
        });
      },
    );
  }
}
