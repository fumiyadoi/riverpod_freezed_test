import 'package:riverpod/riverpod.dart';

final myHomeService = Provider.autoDispose((ref) => MyHomeService());

class MyHomeService {
  int increment(int value) {
    return value + 1;
  }
}
