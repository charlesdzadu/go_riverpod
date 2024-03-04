import 'package:flutter/material.dart';

class FruitsDetailScreen extends StatelessWidget {
  const FruitsDetailScreen({
    required this.id,
    super.key,
  });

  final String id;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Fruits Detail'),
      ),
    );
  }
}
