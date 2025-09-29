import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class User {
  final String name;
  final int age;

  User({required this.name, required this.age});

  User copyWith({String? name, int? age}) {
    return User(name: name ?? this.name, age: age ?? this.age);
  }
}

class UserNotifier extends StateNotifier<User> {
  UserNotifier() : super(User(name: "", age: 0));

  void updateName(String n) {
    state = state.copyWith(name: n);
  }

  void updateAge(int age) {
    state = state.copyWith(age: age);
  }
}

class UserNotifierChange extends ChangeNotifier {
  User user = User(name: '', age: 0);
  void updateName(String n) {
    user = user.copyWith(name: n);
    notifyListeners();
  }

  void updateAge(int age) {
    user = user.copyWith(age: age);
    notifyListeners();
  }
}
