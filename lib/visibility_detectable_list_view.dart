import 'package:detectable_list_view/list_item.dart';
import 'package:flutter/material.dart';

class VisibilityDetectableListView extends StatelessWidget {
  const VisibilityDetectableListView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      itemBuilder: (_, index) => ListItem(index: index),
      separatorBuilder: (_, __) => const Divider(height: 0),
      itemCount: 100,
    );
  }
}
