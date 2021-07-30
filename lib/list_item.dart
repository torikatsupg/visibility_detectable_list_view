import 'package:detectable_list_view/visibility_detectable_list_Item.dart';
import 'package:flutter/material.dart';

class ListItem extends StatelessWidget {
  const ListItem({required this.index, Key? key}) : super(key: key);

  final int index;

  @override
  Widget build(BuildContext context) {
    return VisibilityDetectableListItem(
      child: ListTile(
        leading: CircleAvatar(),
        title: Text('title'),
        subtitle: Text(index.toString()),
      ),
    );
  }
}
