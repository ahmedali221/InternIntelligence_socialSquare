import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:internintelligence_socialsquare/features/auth/data/firebaseAuth_Repo.dart';
import 'package:internintelligence_socialsquare/features/auth/domain/repos/auth_repo.dart';
import 'package:internintelligence_socialsquare/features/auth/presentation/cubit/auth_cubit.dart';
import 'package:internintelligence_socialsquare/features/auth/presentation/cubit/auth_states.dart';
import 'package:internintelligence_socialsquare/homepage.dart';
import 'features/auth/presentation/pages/loginPage.dart';

class MyApp extends StatelessWidget {
  final AuthRepo authRepo;

  MyApp({super.key}) : authRepo = FirebaseauthRepo();

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => AuthCubit(authRepo: authRepo)..checkAuth(),
      child: MaterialApp(
        title: 'SocialSquare',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
        ),
        home: BlocConsumer<AuthCubit, AuthState>(
          listener: (context, state) {
            if (state is AuthError) {
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(
                  content: Text(state.message),
                  backgroundColor: Colors.red,
                ),
              );
            }
          },
          builder: (context, state) {
            return AnimatedSwitcher(
              duration: const Duration(milliseconds: 300),
              child: _buildPage(state),
            );
          },
        ),
      ),
    );
  }

  Widget _buildPage(AuthState state) {
    if (state is AuthInitial || state is AuthLoading) {
      return const Scaffold(
        body: Center(
          child: CircularProgressIndicator(),
        ),
      );
    } else if (state is Authenticated) {
      return const HomePage();
    } else {
      // Handles Unauthenticated and AuthError states
      return LoginPage();
    }
  }
}
