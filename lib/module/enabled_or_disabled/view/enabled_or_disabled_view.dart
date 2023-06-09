import 'package:flutter/material.dart';
import 'package:hyper_ui/core.dart';
import '../controller/enabled_or_disabled_controller.dart';

class EnabledOrDisabledView extends StatefulWidget {
  EnabledOrDisabledView({Key? key}) : super(key: key);

  Widget build(context, EnabledOrDisabledController controller) {
    controller.view = this;

    return Scaffold(
      appBar: AppBar(
        title: Text("EnabledOrDisabled"),
        actions: [],
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.all(20.0),
          child: Column(
            children: [
              QTextField(
                label: "Email",
                validator: Validator.email,
                suffixIcon: Icons.email,
                onChanged: (value) {
                  controller.email = value;
                  controller.checkFormValidation();
                },
              ),
              QTextField(
                label: "Password",
                obscure: true,
                validator: Validator.required,
                suffixIcon: Icons.password,
                onChanged: (value) {
                  print("...");
                  controller.password = value;
                  controller.checkFormValidation();
                },
              ),
              Container(
                width: MediaQuery.of(context).size.width,
                height: 46,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor:
                        controller.isValid ? Colors.orange : Colors.grey,
                  ),
                  onPressed: () => controller.doSave(),
                  child: const Text("Login"),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  @override
  State<EnabledOrDisabledView> createState() => EnabledOrDisabledController();
}
