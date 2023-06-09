import 'package:flutter/material.dart';
import 'package:hyper_ui/state_util.dart';
import '../view/counter_view.dart';

class CounterController extends State<CounterView> implements MvcController {
  static late CounterController instance;
  late CounterView view;

  @override
  void initState() {
    instance = this;
    super.initState();
  }

  @override
  void dispose() => super.dispose();

  @override
  Widget build(BuildContext context) => widget.build(context, this);

  int counter = 0;
  var counter2 = ValueNotifier(0);
  updateCounter() {
    counter++;
    setState(() {});
  }

  updateCounter2() {
    counter2.value++;
  }
}
