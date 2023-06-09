import 'package:flutter/material.dart';
import 'package:hyper_ui/state_util.dart';
import '../view/multiple_selection_view.dart';

class MultipleSelectionController extends State<MultipleSelectionView>
    implements MvcController {
  static late MultipleSelectionController instance;
  late MultipleSelectionView view;

  @override
  void initState() {
    instance = this;
    super.initState();
  }

  @override
  void dispose() => super.dispose();

  @override
  Widget build(BuildContext context) => widget.build(context, this);

  List<Map<String, dynamic>> categories = [
    {
      "label": "Sembako",
    },
    {
      "label": "Rokok",
    },
    {
      "label": "Air Mineral",
    },
    {
      "label": "Bumbu Masak",
    },
    {
      "label": "Kopi",
    }
  ];

  updateIndex(int newIndex) {
    if (categories[newIndex]["selected"] == true) {
      categories[newIndex]["selected"] = false;
    } else {
      categories[newIndex]["selected"] = true;
    }
    setState(() {});
  }

  List getValues() {
    return categories.where((i) => i["selected"] == true).toList();
  }

  doSave() {
    var selectedValues = getValues();
    print(selectedValues);
  }
}
