import 'package:flutter/material.dart';

class FruitsScreen extends StatelessWidget {
  const FruitsScreen({
    this.search,
    super.key,
  });

  final String? search;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Fruits'),
      ),
      body: Center(
        child: Text('Fruits Screen - Search: $search'),
      ),
    );
  }
}
