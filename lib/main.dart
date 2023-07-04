import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'Features/Splash/presentation/view_models/views/splash_view.dart';

void main() {
  runApp(const BooklyApp());
}


class BooklyApp extends StatelessWidget {
  const BooklyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      home: SplashView(),
    );
  }
}

