// File generated by FlutterFire CLI.
// ignore_for_file: type=lint
import 'package:firebase_core/firebase_core.dart' show FirebaseOptions;
import 'package:flutter/foundation.dart'
    show defaultTargetPlatform, kIsWeb, TargetPlatform;

/// Default [FirebaseOptions] for use with your Firebase apps.
///
/// Example:
/// ```dart
/// import 'firebase_options.dart';
/// // ...
/// await Firebase.initializeApp(
///   options: DefaultFirebaseOptions.currentPlatform,
/// );
/// ```
class DefaultFirebaseOptions {
  static FirebaseOptions get currentPlatform {
    if (kIsWeb) {
      return web;
    }
    switch (defaultTargetPlatform) {
      case TargetPlatform.android:
        return android;
      case TargetPlatform.iOS:
        return ios;
      case TargetPlatform.macOS:
        return macos;
      case TargetPlatform.windows:
        return windows;
      case TargetPlatform.linux:
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for linux - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
      default:
        throw UnsupportedError(
          'DefaultFirebaseOptions are not supported for this platform.',
        );
    }
  }

  static const FirebaseOptions web = FirebaseOptions(
    apiKey: 'AIzaSyALSR0_lnchbdeXVdJ9quQ-tKeuUWo0Wok',
    appId: '1:113231832990:web:14401d2f2f216946a1188f',
    messagingSenderId: '113231832990',
    projectId: 'socialsquare-2f005',
    authDomain: 'socialsquare-2f005.firebaseapp.com',
    storageBucket: 'socialsquare-2f005.firebasestorage.app',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyDhdpm2dt3Imp6ibpg4VWN5Mkhx4iPsD70',
    appId: '1:113231832990:android:f9d3e5acd7db7863a1188f',
    messagingSenderId: '113231832990',
    projectId: 'socialsquare-2f005',
    storageBucket: 'socialsquare-2f005.firebasestorage.app',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyBUfPzSo1EJVmUPuGCR-_yee9ZJ34agirc',
    appId: '1:113231832990:ios:e1872d5d79350baaa1188f',
    messagingSenderId: '113231832990',
    projectId: 'socialsquare-2f005',
    storageBucket: 'socialsquare-2f005.firebasestorage.app',
    iosBundleId: 'com.example.internintelligenceSocialsquare',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyBUfPzSo1EJVmUPuGCR-_yee9ZJ34agirc',
    appId: '1:113231832990:ios:e1872d5d79350baaa1188f',
    messagingSenderId: '113231832990',
    projectId: 'socialsquare-2f005',
    storageBucket: 'socialsquare-2f005.firebasestorage.app',
    iosBundleId: 'com.example.internintelligenceSocialsquare',
  );

  static const FirebaseOptions windows = FirebaseOptions(
    apiKey: 'AIzaSyALSR0_lnchbdeXVdJ9quQ-tKeuUWo0Wok',
    appId: '1:113231832990:web:1d3580b7bbc9a6b6a1188f',
    messagingSenderId: '113231832990',
    projectId: 'socialsquare-2f005',
    authDomain: 'socialsquare-2f005.firebaseapp.com',
    storageBucket: 'socialsquare-2f005.firebasestorage.app',
  );
}
