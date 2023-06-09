import 'package:flutter/material.dart';
import 'package:hyper_ui/state_util.dart';
import '../view/theme_changer_view.dart';

class ThemeChangerController extends State<ThemeChangerView>
    implements MvcController {
  static late ThemeChangerController instance;
  late ThemeChangerView view;

  @override
  void initState() {
    instance = this;
    super.initState();
  }

  @override
  void dispose() => super.dispose();

  @override
  Widget build(BuildContext context) => widget.build(context, this);

  ThemeData theme = ThemeData();

  updateToDarkTheme() {
    theme = ThemeData.dark();
    setState(() {});
  }

  updateToOrangeTheme() {
    theme = ThemeData.light().copyWith(
      appBarTheme: AppBarTheme(
        backgroundColor: Colors.orange,
      ),
    );
    setState(() {});
  }
}
