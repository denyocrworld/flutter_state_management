import 'package:flutter/material.dart';
import 'package:hyper_ui/state_util.dart';
import '../view/animation_from_state_view.dart';

class AnimationFromStateController extends State<AnimationFromStateView>
    implements MvcController {
  static late AnimationFromStateController instance;
  late AnimationFromStateView view;

  @override
  void initState() {
    instance = this;
    super.initState();
  }

  @override
  void dispose() => super.dispose();

  @override
  Widget build(BuildContext context) => widget.build(context, this);

  bool isAnimated = false;
  updateAnimationState() {
    isAnimated = !isAnimated;
    setState(() {});
  }
}
