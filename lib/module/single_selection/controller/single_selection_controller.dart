import 'package:flutter/material.dart';
import 'package:hyper_ui/state_util.dart';
import '../view/single_selection_view.dart';

class SingleSelectionController extends State<SingleSelectionView>
    implements MvcController {
  static late SingleSelectionController instance;
  late SingleSelectionView view;

  @override
  void initState() {
    instance = this;
    super.initState();
  }

  @override
  void dispose() => super.dispose();

  @override
  Widget build(BuildContext context) => widget.build(context, this);

  List categories = [
    "Sembako",
    "Rokok",
    "Air Mineral",
    "Bumbu Masak",
    "Kopi",
  ];

  int selectedIndex = -1;
  updateIndex(int newIndex) {
    selectedIndex = newIndex;
    setState(() {});
  }
}
