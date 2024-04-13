import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:presentation2/core/config/app_config.dart';
import 'package:presentation2/src/auth/pages/sign_in_page.dart';

void main() {
  AppConfig.init();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const SignInPage(),
    );
  }
}
