import 'package:detectable_list_view/list_item.dart';
import 'package:flutter/material.dart';

class VisibilityDetectableListView extends StatelessWidget {
  VisibilityDetectableListView({Key? key}) : super(key: key);

  final listViewKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      itemBuilder: (_, index) =>
          ListItem(index: index, listViewKey: listViewKey),
      separatorBuilder: (_, __) => const Divider(height: 0),
      itemCount: 100,
      key: listViewKey, // pass global key
    );
  }
}
