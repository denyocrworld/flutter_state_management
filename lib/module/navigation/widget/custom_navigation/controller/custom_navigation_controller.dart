import 'package:flutter/material.dart';

import '../view/custom_navigation.dart';

class CustomNavigationController extends State<CustomNavigationView> {
  static late CustomNavigationController instance;
  late CustomNavigationView view;

  @override
  void dispose() => super.dispose();

  @override
  Widget build(BuildContext context) => widget.build(context, this);

  @override
  void initState() {
    instance = this;
    navigationItems = widget.navigationItems;
    super.initState();
  }

  List navigationItems = [];
  int selectedIndex = 0;
  Widget? currentView;
  updateIndex(int newIndex) {
    selectedIndex = newIndex;
    currentView = navigationItems[newIndex]["view"];
    setState(() {});
  }
}
