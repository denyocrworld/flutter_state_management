import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:hyper_ui/state_util.dart';
import '../view/http_request_loading_view.dart';

class HttpRequestLoadingController extends State<HttpRequestLoadingView>
    implements MvcController {
  static late HttpRequestLoadingController instance;
  late HttpRequestLoadingView view;

  @override
  void initState() {
    instance = this;
    getProducts();
    super.initState();
  }

  @override
  void dispose() => super.dispose();

  @override
  Widget build(BuildContext context) => widget.build(context, this);

  List users = [];
  bool loading = true;
  getProducts() async {
    var response = await Dio().get(
      "https://reqres.in/api/users",
      options: Options(
        headers: {
          "Content-Type": "application/json",
        },
      ),
    );
    await Future.delayed(Duration(seconds: 3));
    Map obj = response.data;
    users = obj["data"];
    loading = false;
    setState(() {});
  }
}
