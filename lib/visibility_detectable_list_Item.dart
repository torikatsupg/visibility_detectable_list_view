import 'package:flutter/material.dart';

class VisibilityDetectableListItem extends StatefulWidget {
  const VisibilityDetectableListItem(
      {required this.child, required this.listViewKey, Key? key})
      : super(key: key);

  final Widget child;
  final GlobalKey listViewKey;

  @override
  createState() => _VisibilityDetectableListItemState();
}

class _VisibilityDetectableListItemState
    extends State<VisibilityDetectableListItem> {
  @override
  Widget build(BuildContext context) {
    return widget.child;
  }

  void _onScroll() {
    final renderBox = context.findRenderObject() as RenderBox?;
    final listViewRenderBox =
        widget.listViewKey.currentContext?.findRenderObject() as RenderBox?;

    if (renderBox == null || listViewRenderBox == null) return;

    final listItemBottomPosition =
        renderBox.localToGlobal(Offset.zero).dy + renderBox.size.height;

    final listViewBottomPosition =
        listViewRenderBox.localToGlobal(Offset.zero).dy +
            listViewRenderBox.size.height;

    if (listItemBottomPosition <= listViewBottomPosition) {
      // inside
    } else {
      // outside
    }
  }
}
