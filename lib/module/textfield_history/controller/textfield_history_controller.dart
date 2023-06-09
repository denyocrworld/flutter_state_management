import 'package:flutter/material.dart';
import 'package:hyper_ui/state_util.dart';
import '../view/textfield_history_view.dart';

class TextfieldHistoryController extends State<TextfieldHistoryView>
    implements MvcController {
  static late TextfieldHistoryController instance;
  late TextfieldHistoryView view;

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
