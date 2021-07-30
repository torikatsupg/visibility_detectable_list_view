import 'package:flutter/material.dart';

class VisibilityDetectableListItem extends StatefulWidget {
  const VisibilityDetectableListItem({required this.child, Key? key})
      : super(key: key);

  final Widget child;

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
    if (renderBox == null) return;
    final globalOffset = renderBox.localToGlobal(Offset.zero);
  }
}
