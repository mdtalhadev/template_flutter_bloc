import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:template_flutter_bloc/presentations/authentication/data/model/user_model.dart';
import 'package:template_flutter_bloc/utils/try_catch.dart';

class AuthenticationProvider {
  final CollectionReference _usersCollection = FirebaseFirestore.instance
      .collection('users');

  String? get userId => FirebaseAuth.instance.currentUser?.uid;

  bool get isVerified =>
      FirebaseAuth.instance.currentUser?.emailVerified == true;

  Future<bool?> signUp(UserModel user, String password) async {
    return await appTryCatch(() async {
      UserCredential userCredential = await FirebaseAuth.instance
          .createUserWithEmailAndPassword(
            email: user.email,
            password: password,
          );

      if (userCredential.user != null) {
        user = user.copyWith(uid: userCredential.user!.uid);
        await _usersCollection.doc(userCredential.user!.uid).set(user);
        return true;
      }
      return false;
    });
  }

  Future<UserModel?> getMe() {
    return appTryCatch(() async {
      DocumentSnapshot userDoc = await _usersCollection.doc(userId).get();
      return UserModel.fromMap(userDoc.data() as Map<String, dynamic>);
    });
  }

  Future<bool?> login(email, password) async {
    return await appTryCatch(() async {
      await FirebaseAuth.instance.signInWithEmailAndPassword(
        email: email,
        password: password,
      );
      return true;
    });
  }
}
