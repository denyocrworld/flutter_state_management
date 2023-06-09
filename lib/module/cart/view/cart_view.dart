import 'package:flutter/material.dart';
import '../controller/cart_controller.dart';

class CartView extends StatefulWidget {
  CartView({Key? key}) : super(key: key);

  Widget build(context, CartController controller) {
    controller.view = this;

    return Scaffold(
      appBar: AppBar(
        title: Text("Cart"),
        actions: [],
      ),
      body: Container(
        padding: EdgeInsets.all(10.0),
        child: Column(
          children: [
            Expanded(
              child: ListView.builder(
                itemCount: controller.products.length,
                padding: EdgeInsets.zero,
                clipBehavior: Clip.none,
                itemBuilder: (context, index) {
                  var item = controller.products[index];
                  item["qty"] ??= 0;
                  return Card(
                    child: ListTile(
                      leading: CircleAvatar(
                        backgroundColor: Colors.grey[200],
                        backgroundImage: NetworkImage(
                          item["photo"],
                        ),
                      ),
                      title: Text(item["product_name"]),
                      subtitle: Text("${item["price"]} USD"),
                      trailing: SizedBox(
                        width: 120.0,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            CircleAvatar(
                              backgroundColor: Colors.blueGrey,
                              radius: 12.0,
                              child: Center(
                                child: IconButton(
                                  onPressed: () => controller.decreaseQty(item),
                                  icon: Icon(
                                    Icons.remove,
                                    color: Colors.white,
                                    size: 9.0,
                                  ),
                                ),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.all(8.0),
                              child: Text(
                                "${item["qty"]}",
                                style: TextStyle(
                                  fontSize: 14,
                                ),
                              ),
                            ),
                            CircleAvatar(
                              backgroundColor: Colors.blueGrey,
                              radius: 12.0,
                              child: Center(
                                child: IconButton(
                                  onPressed: () => controller.increaseQty(item),
                                  icon: Icon(
                                    Icons.add,
                                    color: Colors.white,
                                    size: 9.0,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
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
  State<CartView> createState() => CartController();
}
