import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_practice/main.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Consumer(
        builder: (context, ref, child) {
          // final name = ref.watch(nameProvider) ?? '';
          // final user = ref.watch(userProvider);
          final user = ref.watch(userProvider.select((value) => value.name));
          return Center(
            child: Column(
              children: [
                TextField(
                  onSubmitted: (value) {
                    // ref.read(nameProvider.notifier).update((state) => value);
                    ref.read(userProvider.notifier).updateName(value);
                  },
                ),
                Text(user),
              ],
            ),
          );
        },
      ),
    );
  }
}
