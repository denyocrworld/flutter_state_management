import 'package:flutter/material.dart';
import '../controller/textfield_history_controller.dart';

class TextfieldHistoryView extends StatefulWidget {
  const TextfieldHistoryView({Key? key}) : super(key: key);

  Widget build(context, TextfieldHistoryController controller) {
    controller.view = this;

    return Scaffold(
      appBar: AppBar(
        title: const Text("TextfieldHistory"),
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
  State<TextfieldHistoryView> createState() => TextfieldHistoryController();
}
