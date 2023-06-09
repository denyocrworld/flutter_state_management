import 'package:flutter/material.dart';
import '../controller/animation_from_state_controller.dart';

class AnimationFromStateView extends StatefulWidget {
  AnimationFromStateView({Key? key}) : super(key: key);

  Widget build(context, AnimationFromStateController controller) {
    controller.view = this;

    return Scaffold(
      appBar: AppBar(
        title: Text("AnimationFromState"),
        actions: [],
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.all(10.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "${controller.isAnimated}",
                style: TextStyle(
                  fontSize: 30.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.blueGrey,
                ),
                onPressed: () => controller.updateAnimationState(),
                child: Text("Save"),
              ),
              Divider(),
              AnimatedRotation(
                turns: (controller.isAnimated ? 360 : 0) / 360,
                duration: const Duration(milliseconds: 900),
                child: CircleAvatar(
                  radius: 40.0,
                  backgroundImage: NetworkImage(
                    "https://i.ibb.co/PGv8ZzG/me.jpg",
                  ),
                ),
              ),
              AnimatedScale(
                scale: controller.isAnimated ? 2.0 : 1.0,
                duration: const Duration(milliseconds: 900),
                child: CircleAvatar(
                  radius: 40.0,
                  backgroundImage: NetworkImage(
                    "https://i.ibb.co/PGv8ZzG/me.jpg",
                  ),
                ),
              ),
              Divider(),
              AnimatedContainer(
                duration: Duration(milliseconds: 900),
                height: 100,
                width: 100,
                margin: EdgeInsets.only(
                  top: controller.isAnimated ? 300 : 0,
                  left: controller.isAnimated ? 300 : 0,
                ),
                decoration: BoxDecoration(
                  color: controller.isAnimated ? Colors.blue : Colors.red,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  @override
  State<AnimationFromStateView> createState() => AnimationFromStateController();
}
