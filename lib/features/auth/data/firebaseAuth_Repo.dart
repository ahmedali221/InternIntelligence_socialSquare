import 'package:firebase_auth/firebase_auth.dart';
import 'package:internintelligence_socialsquare/features/auth/domain/entities/user.dart';

import '../domain/repos/auth_repo.dart';

class FirebaseauthRepo extends AuthRepo {
  final FirebaseAuth auth = FirebaseAuth.instance;
  @override
  Future<AppUser?> getCurrentUser() async {
    final firebaseUser = auth.currentUser;
    if (firebaseUser == null) {
      return null;
    }

    return AppUser(name: '', email: firebaseUser.email!, uid: firebaseUser.uid);
  }

// logout function
  @override
  Future<void> logOut() async {
    await auth.signOut();
  }

//login function
  @override
  Future<AppUser?> loginWithEmailAndPassword(
      String email, String password) async {
    try {
      UserCredential userCredential = await auth.signInWithEmailAndPassword(
          email: email, password: password);
      AppUser user =
          AppUser(name: '', email: email, uid: userCredential.user!.uid);
      return user;
    } catch (e) {
      print(
        e.toString(),
      );
    }
  }

// Sign Up Function
  @override
  Future<AppUser?> signUpWithEmailAndPassword(
      String name, String email, String password) async {
    try {
      UserCredential userCredential = await auth.createUserWithEmailAndPassword(
          email: email, password: password);
      AppUser user =
          AppUser(name: name, email: email, uid: userCredential.user!.uid);
      return user;
    } catch (e) {
      print(
        e.toString(),
      );
    }
  }
}
