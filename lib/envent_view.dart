import 'package:flutter/material.dart';

typedef DisplayCallback = void Function(bool);

class EventView extends StatefulWidget {
  final DisplayCallback callback;
  const EventView({
    Key? key,
    required this.callback,
  }) : super(key: key);

  @override
  _TextViewItemState createState() => _TextViewItemState();
}

class _TextViewItemState extends State<EventView> with WidgetsBindingObserver {
  @override
  void initState() {
    super.initState();
    widget.callback(true);
  }

  @override
  void deactivate() {
    super.deactivate();
    widget.callback(false);
  }

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}