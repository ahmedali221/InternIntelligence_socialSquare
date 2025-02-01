import 'package:flutter/foundation.dart';

class AppUser {
  final String uid;
  final String email;
  final String name;

  AppUser({
    required this.name,
    required this.email,
    required this.uid,
  });

  Map<String, dynamic> toJson() {
    return {
      'uid': uid,
      'email': email,
      'name': name,
    };
  }

  factory AppUser.fromJson(Map<String, dynamic> json) {
    return AppUser(name: 'name', email: 'email', uid: 'uid');
  }
}
