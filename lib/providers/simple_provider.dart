import 'package:hooks_riverpod/hooks_riverpod.dart';

final nameProvider = Provider<String>((ref) {
  return 'John Doe 2 - Simple Provider';
});

final countProvider = StateProvider<int>((ref) {
  return 0;
});
