import 'package:flutter/material.dart';
import '../controller/theme_changer_controller.dart';

class ThemeChangerView extends StatefulWidget {
  const ThemeChangerView({Key? key}) : super(key: key);

  Widget build(context, ThemeChangerController controller) {
    controller.view = this;

    return Theme(
      data: controller.theme,
      child: Scaffold(
        appBar: AppBar(
          title: const Text("ThemeChanger"),
          actions: const [],
        ),
        body: SingleChildScrollView(
          child: Container(
            padding: const EdgeInsets.all(10.0),
            child: Column(
              children: [
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.blueGrey,
                  ),
                  onPressed: () => controller.updateToDarkTheme(),
                  child: const Text("Dark Theme"),
                ),
                const SizedBox(
                  height: 12.0,
                ),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.blueGrey,
                  ),
                  onPressed: () => controller.updateToOrangeTheme(),
                  child: const Text("Orange Theme"),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  @override
  State<ThemeChangerView> createState() => ThemeChangerController();
}
