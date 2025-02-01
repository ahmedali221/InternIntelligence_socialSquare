import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:internintelligence_socialsquare/features/auth/domain/entities/user.dart';
import 'package:internintelligence_socialsquare/features/auth/domain/repos/auth_repo.dart';
import 'package:internintelligence_socialsquare/features/auth/presentation/cubit/auth_states.dart';

class AuthCubit extends Cubit<AuthState> {
  final AuthRepo authRepo;
  AppUser? _currentUser;
  AuthCubit({required this.authRepo}) : super(AuthInitial());

  AppUser? get currentUser => _currentUser;

  void checkAuth() async {
    final AppUser? user = await authRepo.getCurrentUser();
    if (user != null) {
      emit(Authenticated(user));
    } else {
      emit(Unauthenticated());
    }
  }

  Future<void> login(String email, String password) async {
    emit(AuthLoading());
    try {
      final user = await authRepo.loginWithEmailAndPassword(email, password);
      if (user != null) {
        _currentUser = user;
        emit(Authenticated(user));
      } else {
        emit(Unauthenticated());
      }
    } catch (e) {
      emit(
        AuthError(
          e.toString(),
        ),
      );
      emit(Unauthenticated());
    }
  }

  Future<void> register(String name, String email, String password) async {
    emit(AuthLoading());
    try {
      final user =
          await authRepo.signUpWithEmailAndPassword(email, password, name);
      if (user != null) {
        _currentUser = user;
        emit(Authenticated(user));
      } else {
        emit(Unauthenticated());
      }
    } catch (e) {
      emit(
        AuthError(
          e.toString(),
        ),
      );
      emit(Unauthenticated());
    }
  }

  Future<void> logOut() async {
    await authRepo.logOut();
    emit(Unauthenticated());
  }
}
