import 'package:flutter/material.dart';
import 'package:hyper_ui/state_util.dart';
import '../view/chart_with_remote_datasource_view.dart';

class ChartWithRemoteDatasourceController
    extends State<ChartWithRemoteDatasourceView> implements MvcController {
  static late ChartWithRemoteDatasourceController instance;
  late ChartWithRemoteDatasourceView view;

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
