import 'package:flutter/material.dart';

import '../controller/custom_navigation_controller.dart';

class CustomNavigationView extends StatefulWidget {
  final List navigationItems;
  const CustomNavigationView({
    Key? key,
    required this.navigationItems,
  }) : super(key: key);

  Widget build(context, CustomNavigationController controller) {
    controller.view = this;

    return Scaffold(
      body: Stack(
        children: [
          controller.currentView ?? Container(),
          Positioned(
            left: 20,
            top: 20,
            child: Container(
              height: 200,
              width: 160,
              decoration: BoxDecoration(
                color: Colors.black,
                borderRadius: BorderRadius.all(
                  Radius.circular(12.0),
                ),
              ),
              child: Column(
                children:
                    List.generate(controller.navigationItems.length, (index) {
                  var item = controller.navigationItems[index];
                  bool selected = controller.selectedIndex == index;
                  return Expanded(
                    child: InkWell(
                      onTap: () => controller.updateIndex(index),
                      child: Center(
                        child: Container(
                          child: AnimatedScale(
                            scale: selected ? 1.4 : 1.0,
                            duration: const Duration(milliseconds: 900),
                            child: Text(
                              "${item["label"]}",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 16.0,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  );
                }),
              ),
            ),
          ),
        ],
      ),
    );
  }

  @override
  State<CustomNavigationView> createState() => CustomNavigationController();
}
