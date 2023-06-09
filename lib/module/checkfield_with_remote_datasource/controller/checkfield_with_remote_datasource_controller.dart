import 'package:flutter/material.dart';
import '../../../core.dart';
import '../view/checkfield_with_remote_datasource_view.dart';

class CheckfieldWithRemoteDatasourceController
    extends State<CheckfieldWithRemoteDatasourceView> implements MvcController {
  static late CheckfieldWithRemoteDatasourceController instance;
  late CheckfieldWithRemoteDatasourceView view;

  @override
  void initState() {
    instance = this;
    getUsers();
    super.initState();
  }

  @override
  void dispose() => super.dispose();

  @override
  Widget build(BuildContext context) => widget.build(context, this);

  List<Map<String, dynamic>> users = [];
  getUsers() async {
    var response = await Dio().get(
      "https://reqres.in/api/users",
      options: Options(
        headers: {
          "Content-Type": "application/json",
        },
      ),
    );
    Map obj = response.data;
    List items = obj["data"];
    for (var item in items) {
      users.add({
        "label": item["first_name"],
        "value": item["id"],
      });
    }
    setState(() {});
  }
}
