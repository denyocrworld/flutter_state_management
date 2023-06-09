import 'package:flutter/material.dart';
import '../controller/chart_with_remote_datasource_controller.dart';

class ChartWithRemoteDatasourceView extends StatefulWidget {
  const ChartWithRemoteDatasourceView({Key? key}) : super(key: key);

  Widget build(context, ChartWithRemoteDatasourceController controller) {
    controller.view = this;

    return Scaffold(
      appBar: AppBar(
        title: const Text("ChartWithRemoteDatasource"),
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
  State<ChartWithRemoteDatasourceView> createState() =>
      ChartWithRemoteDatasourceController();
}
