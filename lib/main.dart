import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'pages/home_page.dart';
import 'service/di_service.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await DIService.init();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const GetMaterialApp(
      home: HomePage(),
    );
  }
}
