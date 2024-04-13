import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:presentation2/src/auth/models/user_model.dart';

class FireService {
  static final FirebaseAuth auth = FirebaseAuth.instance;

  static final userRef = FirebaseFirestore.instance.collection("users");

  static Future<String> createUser(String email, String password) async {
    var userCredential = await auth.createUserWithEmailAndPassword(
        email: email, password: password);

    UserModel model = UserModel(email: email, password: password);
    userRef.add(model.toJson());
    return userCredential.user!.email ?? '';
  }

  static Future<String> loginUser(String email, String password) async {
    var userCredential =
        await auth.signInWithEmailAndPassword(email: email, password: password);

    return userCredential.user!.email ?? '';
  }

  static logout() async {
    await auth.signOut();
  }

  static getUserData() async {
    List<UserModel> users = [];

    userRef.get().then((value) {
      for (var doc in value.docs) {
        print("sdsdsd${doc.id} => ${doc.data()}");

        UserModel userModel = UserModel.fromJson(doc.data());

        users.add(userModel);
      }
    });

    return users;
  }
}
