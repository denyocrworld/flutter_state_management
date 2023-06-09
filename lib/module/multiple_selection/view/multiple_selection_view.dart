import 'package:flutter/material.dart';
import '../controller/multiple_selection_controller.dart';

class MultipleSelectionView extends StatefulWidget {
  MultipleSelectionView({Key? key}) : super(key: key);

  Widget build(context, MultipleSelectionController controller) {
    controller.view = this;

    return Scaffold(
      appBar: AppBar(
        title: const Text("MultipleSelection"),
        actions: const [],
      ),
      body: Container(
        padding: EdgeInsets.all(10.0),
        child: Column(
          children: [
            Expanded(
              child: ListView.builder(
                itemCount: controller.categories.length,
                padding: EdgeInsets.zero,
                clipBehavior: Clip.none,
                itemBuilder: (context, index) {
                  var item = controller.categories[index];
                  bool selected = item["selected"] == true;

                  return Card(
                    color: selected ? Colors.black : Colors.white,
                    child: ListTile(
                      onTap: () => controller.updateIndex(index),
                      title: Text(
                        "${item["label"]}",
                        style: TextStyle(
                          color: selected ? Colors.white : null,
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.blueGrey,
              ),
              onPressed: () => controller.doSave(),
              child: const Text("Save"),
            ),
          ],
        ),
      ),
    );
  }

  @override
  State<MultipleSelectionView> createState() => MultipleSelectionController();

  List categories = [
    "Sembako",
    "Rokok",
    "Air Mineral",
    "Bumbu Masak",
    "Kopi",
  ];
}
