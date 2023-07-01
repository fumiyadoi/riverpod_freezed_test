import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:riverpod_freezed_test/domain/my_home/my_home_service.dart';
import 'package:riverpod_freezed_test/domain/my_home/my_home_state.dart';

final myHomeStateNotifierProvider = StateNotifierProvider.autoDispose<MyHomeNoifier, MyHomeState>((ref) {
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
    final newCounter = _myHomeService.increment(counter);
    state = state.copyWith(counter: newCounter);
  }
}
