import 'package:flutter/material.dart';
import 'package:hyper_ui/core.dart';
import '../view/enabled_or_disabled_view.dart';

class EnabledOrDisabledController extends State<EnabledOrDisabledView>
    implements MvcController {
  static late EnabledOrDisabledController instance;
  late EnabledOrDisabledView view;

  @override
  void initState() {
    instance = this;
    super.initState();
  }

  @override
  void dispose() => super.dispose();

  @override
  Widget build(BuildContext context) => widget.build(context, this);

  String? email;
  String? password;

  bool get isValid {
    if (email == "" || password == "") return false;
    if (email != null && password != null) return true;

    return false;
  }

  doSave() async {
    if (isValid) {
      showInfoDialog("Berhasil menyimpan data!");
    }
  }

  checkFormValidation() {
    setState(() {});
  }
}
