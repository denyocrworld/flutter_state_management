import 'package:flutter/material.dart';
import '../../../core.dart';
import '../view/map_with_remote_datasource_view.dart';
import 'package:latlong2/latlong.dart';

class MapWithRemoteDatasourceController
    extends State<MapWithRemoteDatasourceView> implements MvcController {
  static late MapWithRemoteDatasourceController instance;
  late MapWithRemoteDatasourceView view;

  @override
  void initState() {
    instance = this;
    getMarkers();
    super.initState();
  }

  @override
  void dispose() => super.dispose();

  @override
  Widget build(BuildContext context) => widget.build(context, this);

  List<Marker> markers = [];
  getMarkers() async {
    var response = await Dio().get(
      "https://capekngoding.com/demo/api/markers",
      options: Options(
        headers: {
          "Content-Type": "application/json",
        },
      ),
    );
    Map obj = response.data;
    var items = obj["data"];
    for (var item in items) {
      markers.add(
        Marker(
          point: LatLng(
            item["latitude"],
            item["longitude"],
          ),
          builder: (context) => Icon(
            Icons.pin_drop,
            color: Colors.red,
            size: 24,
          ),
        ),
      );
    }
    setState(() {});
  }

  generateMarkers() async {
    List markers = [
      {
        "latitude": -6.1754234,
        "longitude": 106.827224,
      },
      {
        "latitude": -6.1751234,
        "longitude": 106.827224,
      },
      {
        "latitude": -6.1750234,
        "longitude": 106.827024,
      }
    ];
    for (var marker in markers) {
      await Dio().post(
        "https://capekngoding.com/demo/api/markers",
        options: Options(
          headers: {
            "Content-Type": "application/json",
          },
        ),
        data: {
          "latitude": marker["latitude"],
          "longitude": marker["longitude"],
        },
      );
    }
  }
}
