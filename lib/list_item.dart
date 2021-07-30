import 'package:detectable_list_view/visibility_detectable_list_Item.dart';
import 'package:flutter/material.dart';

class ListItem extends StatelessWidget {
  const ListItem({
    required this.index,
    required this.listViewKey,
    required this.controller,
    Key? key,
  }) : super(key: key);

  final int index;
  final GlobalKey listViewKey;
  final ScrollController controller;

  @override
  Widget build(BuildContext context) {
    return VisibilityDetectableListItem(
      listViewKey: listViewKey,
      controller: controller,
      child: ListTile(
        leading: CircleAvatar(),
        title: Text('title'),
        subtitle: Text(index.toString()),
      ),
    );
  }
}
