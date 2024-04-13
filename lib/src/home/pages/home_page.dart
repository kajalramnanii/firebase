import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:presentation2/core/widgets/app_sizer.dart';
import 'package:presentation2/src/auth/pages/sign_in_page.dart';
import 'package:presentation2/src/home/controller/home_controller.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    HomeController controller = Get.put(HomeController());

    return Scaffold(
      appBar: AppBar(
        title: const Text('Home Page'),
        actions: [
          InkWell(
            onTap: () {
              controller.logout();
              Get.off(() => const SignInPage());
            },
            child: const Icon(
              Icons.logout,
              color: Colors.red,
            ),
          ),
          const WidthBox(12),
        ],
      ),
      body: GetBuilder<HomeController>(builder: (controller) {
        return ListView.separated(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            itemBuilder: (context, index) => Container(
                  padding: const EdgeInsets.all(12),
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.grey),
                  ),
                  child: Text(controller.users[index].email ?? ""),
                ),
            separatorBuilder: (context, index) => const HeightBox(10),
            itemCount: controller.users.length);
      }),
    );
  }
}
