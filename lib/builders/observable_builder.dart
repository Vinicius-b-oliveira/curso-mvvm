import 'package:flutter/material.dart';
import 'package:mvvm/contracts/observable.dart';

class ObservableBuilder extends StatefulWidget {
  final Observable observable;
  final Widget? child;
  final Widget Function(BuildContext context, Widget? child) builder;
  const ObservableBuilder({
    required this.observable,
    required this.builder,
    this.child,
    super.key,
  });

  @override
  State<ObservableBuilder> createState() => _ObservableBuilderState();
}

class _ObservableBuilderState extends State<ObservableBuilder> {
  @override
  void initState() {
    widget.observable.addListener(rebuild);
    super.initState();
  }

  void rebuild() {
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return widget.builder(context, widget.child);
  }

  @override
  void dispose() {
    widget.observable.removeListener(rebuild);
    super.dispose();
  }
}
