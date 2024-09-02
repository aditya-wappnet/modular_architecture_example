import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:modular_structure_repo/routes/app_routes.dart';


void main() {
 

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: AppRoutes.POST_SCREEN,
      getPages: AppRoutes.routes,
    );
  }
}
