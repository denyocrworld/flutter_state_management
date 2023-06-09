import 'package:flutter/material.dart';
import 'package:hyper_ui/core.dart';
import 'package:latlong2/latlong.dart';
import '../controller/map_with_remote_datasource_controller.dart';

class MapWithRemoteDatasourceView extends StatefulWidget {
  MapWithRemoteDatasourceView({Key? key}) : super(key: key);

  Widget build(context, MapWithRemoteDatasourceController controller) {
    controller.view = this;

    return Scaffold(
      appBar: AppBar(
        title: Text("MapWithRemoteDatasource"),
        actions: [
          IconButton(
            onPressed: () => controller.generateMarkers(),
            icon: const Icon(
              Icons.add,
              size: 24.0,
            ),
          ),
        ],
      ),
      body: Container(
        padding: EdgeInsets.all(10.0),
        child: Column(
          children: [
            Builder(
              builder: (context) {
                return SizedBox(
                  height: MediaQuery.of(context).size.height * 0.4,
                  child: FlutterMap(
                    options: MapOptions(
                      center: LatLng(
                        -6.1754234,
                        106.827224,
                      ),
                      zoom: 16,
                      interactiveFlags:
                          InteractiveFlag.all - InteractiveFlag.rotate,
                    ),
                    children: [
                      TileLayer(
                        urlTemplate:
                            'https://tile.openstreetmap.org/{z}/{x}/{y}.png',
                        userAgentPackageName:
                            'dev.fleaflet.flutter_map.example',
                      ),
                      MarkerLayer(
                        markers: controller.markers,
                      ),
                    ],
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }

  @override
  State<MapWithRemoteDatasourceView> createState() =>
      MapWithRemoteDatasourceController();
}
