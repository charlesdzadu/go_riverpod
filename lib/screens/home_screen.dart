import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

import '../providers/simple_provider.dart';

class HomeScreen extends ConsumerWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      body: SizedBox(
          width: double.infinity,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              const Text('Simple provider example'),
              Text(ref.watch(nameProvider)),
              const Text("Counter"),
              Text(ref.watch(countProvider).toString()),
              ElevatedButton(
                onPressed: () {
                  ref.read(countProvider.notifier).update((state) => state + 1);
                },
                child: const Text("Increment"),
              ),
              ElevatedButton(
                onPressed: () {
                  context.pushNamed('page2');
                },
                child: const Text("Page 2"),
              ),
              ElevatedButton(
                onPressed: () {
                  context.pushNamed('todo');
                },
                child: const Text("Todo"),
              ),
              ElevatedButton(
                onPressed: () {
                  context.pushNamed('fruits',
                      queryParameters: {'search': 'apple'});
                },
                child: const Text("Fruits"),
              ),
            ],
          )),
    );
  }
}
