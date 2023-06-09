import 'package:flutter/material.dart';
import '../controller/http_request_loading_controller.dart';

class HttpRequestLoadingView extends StatefulWidget {
  HttpRequestLoadingView({Key? key}) : super(key: key);

  Widget build(context, HttpRequestLoadingController controller) {
    controller.view = this;

    if (controller.loading)
      return Center(
        child: CircularProgressIndicator(),
      );
    return Scaffold(
      appBar: AppBar(
        title: Text("HttpRequestLoading"),
        actions: [],
      ),
      body: Container(
        padding: EdgeInsets.all(10.0),
        child: Column(
          children: [
            Expanded(
              child: ListView.builder(
                itemCount: controller.users.length,
                padding: EdgeInsets.zero,
                clipBehavior: Clip.none,
                itemBuilder: (context, index) {
                  var item = controller.users[index];
                  return Card(
                    child: ListTile(
                      leading: CircleAvatar(
                        backgroundColor: Colors.grey[200],
                        backgroundImage: NetworkImage(
                          item["avatar"],
                        ),
                      ),
                      title: Text(item["first_name"]),
                      subtitle: Text(item["email"]),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }

  @override
  State<HttpRequestLoadingView> createState() => HttpRequestLoadingController();
}
