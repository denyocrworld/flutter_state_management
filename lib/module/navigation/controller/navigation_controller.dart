import 'package:flutter/material.dart';
import 'package:hyper_ui/state_util.dart';
import '../view/navigation_view.dart';

class NavigationController extends State<NavigationView>
    implements MvcController {
  static late NavigationController instance;
  late NavigationView view;

  @override
  void initState() {
    instance = this;
    super.initState();
  }

  @override
  void dispose() => super.dispose();

  @override
  Widget build(BuildContext context) => widget.build(context, this);
}
