import 'package:riverpod/riverpod.dart';
import 'package:riverpod_freezed_test/infrastructure/model/counter.dart';

final myHomeService = Provider.autoDispose((ref) => MyHomeService());

class MyHomeService {
  void increment() {
    counter = Counter(value: counter.value + 1);
  }
}
