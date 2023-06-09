import 'package:flutter/material.dart';
import 'package:hyper_ui/debug.dart';
import 'package:hyper_ui/setup.dart';
import 'package:hyper_ui/shared/theme/theme.dart';
import 'package:hyper_ui/state_util.dart';

import 'module/dashboard/view/dashboard_view.dart';

void main() async {
  await initialize();
  runMainApp();
}

runMainApp() async {
  return runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Capek Ngoding',
      navigatorKey: Get.navigatorKey,
      debugShowCheckedModeBanner: false,
      theme: getDefaultTheme(),
      home: const DashboardView(),
      builder: (context, child) => debugView(
        context: context,
        child: child,
        visible: true,
      ),
    );
  }
}
