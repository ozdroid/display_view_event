import 'package:flutter/material.dart';

import 'display_event.dart';

class EventView extends StatefulWidget {
  final DisplayEvent? callback;
  const EventView({
    Key? key,
    required this.callback,
  }) : super(key: key);

  @override
  _TextViewItemState createState() => _TextViewItemState();
}

class _TextViewItemState extends State<EventView> implements RouteAware {
  @override
  void initState() {
    super.initState();
    if (widget.callback != null) {
      widget.callback!.onDisplay();
    }

    print("initState");
  }

  @override
  void deactivate() {
    super.deactivate();
    if (widget.callback != null) {
      widget.callback!.onHiden();
    }
    print("deactivate");
  }

  @override
  Widget build(BuildContext context) {
    return Container();
  }

  @override
  void didPop() {
    if (widget.callback != null) {
      widget.callback!.didPop();
    }
  }

  @override
  void didPopNext() {
    if (widget.callback != null) {
      widget.callback!.didPopNext();
    }
  }

  @override
  void didPush() {
    if (widget.callback != null) {
      widget.callback!.didPush();
    }
  }

  @override
  void didPushNext() {
    if (widget.callback != null) {
      widget.callback!.didPushNext();
    }
  }
}
