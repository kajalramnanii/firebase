import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:presentation2/core/widgets/app_button.dart';
import 'package:presentation2/core/widgets/app_input_field.dart';
import 'package:presentation2/core/widgets/app_sizer.dart';
import 'package:presentation2/src/auth/controller/auth_controller.dart';
import 'package:presentation2/src/auth/pages/sign_up_page.dart';

class SignInPage extends StatelessWidget {
  const SignInPage({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(AuthController());
    controller.clear();
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                'Sign In Page',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
              ),
              const HeightBox(12),
              AppInputField(
                controller: controller.emailController,
                hintText: 'Email',
              ),
              const HeightBox(12),
              AppInputField(
                controller: controller.passwordController,
                hintText: 'Password',
              ),
              const HeightBox(12),
              AppButton(
                btnName: 'Sign In',
                onTap: controller.signIn,
              ),
              const HeightBox(50),
              const Divider(
                color: Colors.grey,
                height: 1,
              ),
              const HeightBox(15),
              InkWell(
                onTap: () {
                  Get.to(() => const SignUpPage());
                },
                child: const Text(
                  "Dont\'t have an account? Sign up",
                  style: TextStyle(color: Colors.grey, fontSize: 12),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
