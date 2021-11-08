import 'package:flutter/material.dart';
import 'display_event.dart';
import 'envent_view.dart';

class DisplayEventView extends StatelessWidget {
  final Widget child;
  final DisplayEvent controller;
  const DisplayEventView({
    Key? key,
    required this.child,
    required this.controller,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      EventView(callback: (isShow) {
        if (isShow) {
          controller.onDisplay();
        } else {
          controller.onHiden();
        }
      }),
      child,
    ]);
  }
}
