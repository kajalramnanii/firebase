import 'package:get/get.dart';
import 'package:presentation2/core/service/fire_service.dart';
import 'package:presentation2/src/auth/models/user_model.dart';
import 'package:presentation2/src/home/models/product_model.dart';

class HomeController extends GetxController {
  List<ProductModel> _products = [];

  List<ProductModel> get products => _products;

  set products(List<ProductModel> value) {
    _products = value;
    update();
  }

  ///This override method will auto
  ///when HomeController will Initialise
  @override
  void onInit() {
    print("object");
    super.onInit();
    _getUserData();
    update();
  }

  List<UserModel> _users = [];

  List<UserModel> get users => _users;

  set users(List<UserModel> value) {
    _users = value;
    update();
  }

  _getUserData() async {
    users = await FireService.getUserData();
    update();
  }

  logout() async {
    await FireService.logout();
  }
}
