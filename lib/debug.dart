import 'package:flutter/material.dart';
import 'package:hyper_ui/shared/widget/widget_demo/widget_demo.dart';
import 'core.dart';

Widget debugView({
  required BuildContext context,
  required bool visible,
  Widget? child,
}) {
  if (child == null) return Container();
  if (!visible) return Container();
  return Material(
    child: Stack(
      children: [
        child,
        Positioned(
          right: -8,
          bottom: 100,
          child: Container(
            width: 30.0,
            padding: const EdgeInsets.all(6.0),
            decoration: const BoxDecoration(
              color: Colors.black,
              borderRadius: BorderRadius.all(
                Radius.circular(
                  16.0,
                ),
              ),
            ),
            child: Column(
              children: [
                InkWell(
                  onTap: () => Get.back(),
                  child: const Icon(
                    Icons.arrow_back,
                    color: Colors.white,
                    size: 12.0,
                  ),
                ),
                const SizedBox(
                  height: 12.0,
                ),
                InkWell(
                  onTap: () => Get.to(HUIWidgetDemoView()),
                  child: const Icon(
                    Icons.widgets,
                    color: Colors.white,
                    size: 12.0,
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    ),
  );
}
