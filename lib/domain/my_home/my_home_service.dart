import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:riverpod_freezed_test/infrastructure/model/counter/counter.dart';

final myHomeService = Provider.autoDispose((ref) => MyHomeService());

class MyHomeService {
  Counter increment(Counter counter) {
    return counter.copyWith(value: counter.value + 1);
  }
}
