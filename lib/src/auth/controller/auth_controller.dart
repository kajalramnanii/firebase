import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:presentation2/core/service/fire_service.dart';
import 'package:presentation2/src/auth/pages/sign_in_page.dart';
import 'package:presentation2/src/home/pages/home_page.dart';

class AuthController extends GetxController {
  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  signUp() async {
    if (emailController.text == "" || passwordController.text == "") {
      Get.showSnackbar(
        const GetSnackBar(
          title: "Error",
          message: "Field can not be empty",
        ),
      );
      return;
    }

    FireService.createUser(emailController.text, passwordController.text)
        .then((value) {
      emailController.clear();
      passwordController.clear();
      Get.off(() => const SignInPage());
    }).onError((error, stackTrace) {
      Get.showSnackbar(
        GetSnackBar(
          title: "Error",
          message: error.toString(),
        ),
      );
    });
  }

  clear() {
    emailController.clear();
    passwordController.clear();
  }

  signIn() async {
    if (emailController.text == "" || passwordController.text == "") {
      Get.showSnackbar(
        const GetSnackBar(
          title: "Error",
          message: "Field can not be empty",
        ),
      );
    }

    FireService.loginUser(emailController.text, passwordController.text)
        .then(
      (value) => Get.off(
        () => const HomePage(),
      ),
    )
        .onError((error, stackTrace) {
      Get.showSnackbar(
        GetSnackBar(
          title: "Error",
          message: error.toString(),
        ),
      );
      return null;
    });
  }

  ///Good Habit
  ///Dispose every controller you defined in Your Get Controller
  ///Reason : Better performance
  @override
  void dispose() {
    emailController.dispose();
    passwordController.dispose();

    super.dispose();
  }
}
