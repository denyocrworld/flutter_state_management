import 'package:flutter/material.dart';
import '../controller/timer_controller.dart';

class TimerView extends StatefulWidget {
  TimerView({Key? key}) : super(key: key);

  Widget build(context, TimerController controller) {
    controller.view = this;

    return Scaffold(
      appBar: AppBar(
        title: Text("Timer"),
        actions: [],
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.all(10.0),
          child: Column(
            children: [
              Text(
                "${controller.time}",
                style: TextStyle(
                  fontSize: 30.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  @override
  State<TimerView> createState() => TimerController();
}
