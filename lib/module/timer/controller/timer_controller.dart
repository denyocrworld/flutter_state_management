import 'dart:async';

import 'package:flutter/material.dart';
import 'package:hyper_ui/state_util.dart';
import 'package:intl/intl.dart';
import '../view/timer_view.dart';

class TimerController extends State<TimerView> implements MvcController {
  static late TimerController instance;
  late TimerView view;
  late Timer timer;
  late String time = "03:40:23";
  @override
  void initState() {
    instance = this;
    timer = Timer.periodic(Duration(seconds: 1), (timer) {
      time = DateFormat("kk:mm:ss").format(DateTime.now());
      setState(() {});
    });
    super.initState();
  }

  @override
  void dispose() {
    timer.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) => widget.build(context, this);
}
