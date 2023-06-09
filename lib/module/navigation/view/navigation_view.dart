import 'package:flutter/material.dart';
import 'package:hyper_ui/module/navigation/widget/custom_navigation/view/custom_navigation.dart';
import '../controller/navigation_controller.dart';

class NavigationView extends StatefulWidget {
  NavigationView({Key? key}) : super(key: key);

  Widget build(context, NavigationController controller) {
    controller.view = this;

    return CustomNavigationView(
      navigationItems: [
        {
          "label": "Dashboard",
          "view": Container(
            color: Colors.red,
          ),
        },
        {
          "label": "Order",
          "view": Container(
            color: Colors.green,
          ),
        },
        {
          "label": "Favorite",
          "view": Container(
            color: Colors.purple,
          ),
        },
        {
          "label": "Profile",
          "view": Container(
            color: Colors.orange,
          ),
        }
      ],
    );
  }

  @override
  State<NavigationView> createState() => NavigationController();
}
