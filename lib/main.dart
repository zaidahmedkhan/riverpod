import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_practice/home_screen.dart';

// final nameProvider = Provider<String>((ref) => 'Zaid Ahmed Khan');
final nameProvider = StateProvider<String?>((ref) => null);

void main() {
  runApp(const ProviderScope(child: MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(theme: ThemeData(), home: HomeScreen());
  }
}
