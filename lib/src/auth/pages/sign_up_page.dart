import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:presentation2/core/widgets/app_button.dart';
import 'package:presentation2/core/widgets/app_input_field.dart';
import 'package:presentation2/core/widgets/app_sizer.dart';
import 'package:presentation2/src/auth/controller/auth_controller.dart';
import 'package:presentation2/src/auth/pages/sign_in_page.dart';

class SignUpPage extends StatelessWidget {
  const SignUpPage({super.key});

  @override
  Widget build(BuildContext context) {
    ///First we have to put controller
    ///It will create our controller in app
    ///After that, We can use it
    ///Verify the log
    ///log : Instance "AuthController" has been created
    ///log : Instance "AuthController" has been initialized
    final controller = Get.put(AuthController());
    controller.clear();

    ///As you see, I am not wrapping any get 's widget
    ///Reason: I am not updating any state or not updating the widget
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                'Sign Up Page',
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
                btnName: 'Sign Up',
                onTap: controller.signUp,
              ),
              const HeightBox(50),
              const Divider(
                color: Colors.grey,
                height: 1,
              ),
              const HeightBox(15),
              InkWell(
                onTap: () {
                  Get.to(() => const SignInPage());
                },
                child: const Text(
                  "Already have an account? Sign In",
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
