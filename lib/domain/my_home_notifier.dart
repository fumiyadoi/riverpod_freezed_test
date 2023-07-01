import 'package:riverpod/riverpod.dart';
import 'package:riverpod_freezed_test/domain/my_home_service.dart';
import 'package:riverpod_freezed_test/domain/my_home_state.dart';
import 'package:riverpod_freezed_test/infrastructure/model/counter.dart';

final mylistFavoriteNotifierProvider = StateNotifierProvider.autoDispose<MyHomeNoifier, MyHomeState>((ref) {
  return MyHomeNoifier(
    myHomeService: ref.watch(myHomeService),
  );
});

class MyHomeNoifier extends StateNotifier<MyHomeState> {
  MyHomeNoifier({required MyHomeService myHomeService})
      : _myHomeService = myHomeService,
        super(const MyHomeState());

  final MyHomeService _myHomeService;

  Future<void> increment() async {
    final counter = state.counter;
    final newCounter = Counter(value: _myHomeService.increment(counter.value));
    state = state.copyWith(
      counter: newCounter
    );
  }
}
