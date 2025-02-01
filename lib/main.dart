import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:internintelligence_socialsquare/app.dart';
import 'package:internintelligence_socialsquare/features/auth/presentation/pages/loginPage.dart';
import 'package:internintelligence_socialsquare/firebase_options.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  runApp(MyApp());
}
