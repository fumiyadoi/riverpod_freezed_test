import 'package:hooks_riverpod/hooks_riverpod.dart';

final myHomeService = Provider.autoDispose((ref) => MyHomeService());

class MyHomeService {
  int increment(int value) {
    return value + 1;
  }
}
