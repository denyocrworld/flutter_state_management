import 'package:flutter/material.dart';
import '../controller/single_selection_controller.dart';

class SingleSelectionView extends StatefulWidget {
  SingleSelectionView({Key? key}) : super(key: key);

  Widget build(context, SingleSelectionController controller) {
    controller.view = this;

    return Scaffold(
      appBar: AppBar(
        title: Text("SingleSelection"),
        actions: [],
      ),
      body: Container(
        padding: EdgeInsets.all(10.0),
        child: Column(
          children: [
            Text(
              "${controller.selectedIndex}",
              style: TextStyle(
                fontSize: 24.0,
              ),
            ),
            Expanded(
              child: ListView.builder(
                itemCount: controller.categories.length,
                padding: EdgeInsets.zero,
                clipBehavior: Clip.none,
                itemBuilder: (context, index) {
                  var item = controller.categories[index];
                  bool selected = controller.selectedIndex == index;
                  return Card(
                    color: selected ? Colors.black : Colors.white,
                    child: ListTile(
                      onTap: () => controller.updateIndex(index),
                      title: Text(
                        "$item",
                        style: TextStyle(
                          color: selected ? Colors.white : null,
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }

  @override
  State<SingleSelectionView> createState() => SingleSelectionController();
}
