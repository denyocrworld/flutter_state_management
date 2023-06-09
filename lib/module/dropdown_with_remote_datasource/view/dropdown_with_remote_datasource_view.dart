import 'package:flutter/material.dart';
import 'package:hyper_ui/core.dart';
import '../controller/dropdown_with_remote_datasource_controller.dart';

class DropdownWithRemoteDatasourceView extends StatefulWidget {
  DropdownWithRemoteDatasourceView({Key? key}) : super(key: key);

  Widget build(context, DropdownWithRemoteDatasourceController controller) {
    controller.view = this;

    return Scaffold(
      appBar: AppBar(
        title: Text("DropdownWithRemoteDatasource"),
        actions: [],
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.all(10.0),
          child: Column(
            children: [
              Card(
                child: Padding(
                  padding: EdgeInsets.all(20.0),
                  child: Column(
                    children: [
                      Text(
                        "${controller.users}",
                        style: TextStyle(
                          fontSize: 12.0,
                        ),
                      ),
                      if (controller.users.isNotEmpty)
                        QDropdownField(
                          label: "Roles",
                          hint: "Your roles",
                          validator: Validator.required,
                          items: controller.users,
                          onChanged: (value, label) {},
                        ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  @override
  State<DropdownWithRemoteDatasourceView> createState() =>
      DropdownWithRemoteDatasourceController();
}
