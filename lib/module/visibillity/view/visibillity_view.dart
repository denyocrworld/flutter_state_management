import 'package:flutter/material.dart';
import '../controller/visibillity_controller.dart';

class VisibillityView extends StatefulWidget {
  const VisibillityView({Key? key}) : super(key: key);

  Widget build(context, VisibillityController controller) {
    controller.view = this;

    return Scaffold(
      appBar: AppBar(
        title: const Text("Visibillity"),
        actions: const [],
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            children: const [],
          ),
        ),
      ),
    );
  }

  @override
  State<VisibillityView> createState() => VisibillityController();
}
