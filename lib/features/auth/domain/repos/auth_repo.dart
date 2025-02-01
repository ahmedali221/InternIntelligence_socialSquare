import 'package:internintelligence_socialsquare/features/auth/domain/entities/user.dart';

abstract class AuthRepo {
  Future<AppUser?> loginWithEmailAndPassword(String email, String password);
  Future<AppUser?> signUpWithEmailAndPassword(
      String name, String email, String password);
  Future<void> logOut();
  Future<AppUser?> getCurrentUser();
}
