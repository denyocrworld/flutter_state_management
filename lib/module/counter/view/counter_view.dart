import 'package:flutter/material.dart';
import '../controller/counter_controller.dart';

class CounterView extends StatefulWidget {
  CounterView({Key? key}) : super(key: key);

  Widget build(context, CounterController controller) {
    controller.view = this;

    return Scaffold(
      appBar: AppBar(
        title: Text("Counter"),
        actions: [],
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.all(10.0),
          child: Column(
            children: [
              Text(
                "${controller.counter}",
                style: TextStyle(
                  fontSize: 30.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.blueGrey,
                ),
                onPressed: () => controller.updateCounter(),
                child: const Text("Add Counter"),
              ),
              Divider(),
              ValueListenableBuilder(
                  valueListenable: controller.counter2,
                  builder: (context, _, child) {
                    return Text(
                      "${controller.counter2.value}",
                      style: TextStyle(
                        fontSize: 30.0,
                        fontWeight: FontWeight.bold,
                      ),
                    );
                  }),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.blueGrey,
                ),
                onPressed: () => controller.updateCounter2(),
                child: const Text("Add Counter"),
              ),
            ],
          ),
        ),
      ),
    );
  }

  @override
  State<CounterView> createState() => CounterController();
}
