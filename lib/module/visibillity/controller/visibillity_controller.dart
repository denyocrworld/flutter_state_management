import 'package:flutter/material.dart';
import 'package:hyper_ui/state_util.dart';
import '../view/visibillity_view.dart';

class VisibillityController extends State<VisibillityView>
    implements MvcController {
  static late VisibillityController instance;
  late VisibillityView view;

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
