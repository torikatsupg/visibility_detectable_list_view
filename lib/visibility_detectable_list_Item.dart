import 'package:flutter/material.dart';

class VisibilityDetectableListItem extends StatefulWidget {
  const VisibilityDetectableListItem({
    required this.child,
    required this.listViewKey,
    required this.controller,
    Key? key,
  }) : super(key: key);

  final Widget child;
  final GlobalKey listViewKey;
  final ScrollController controller;

  @override
  createState() => _VisibilityDetectableListItemState();
}

class _VisibilityDetectableListItemState
    extends State<VisibilityDetectableListItem> {
  bool isVisible = false;

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    WidgetsBinding.instance?.addPostFrameCallback(
      (_) => widget.controller.addListener(_onScroll),
    );
  }

  @override
  void dispose() {
    super.dispose();
    widget.controller.removeListener(_onScroll);
  }

  @override
  Widget build(BuildContext context) {
    _onScroll(); // 初回ビルド時のみ条件判定を行う
    return Container(
      color: isVisible ? Colors.amber : null,
      child: widget.child,
    );
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
      setState(() => isVisible = true); // inside
    } else {
      setState(() => isVisible = false); // outside
    }
  }
}
