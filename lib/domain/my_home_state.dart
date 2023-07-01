import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:riverpod_freezed_test/infrastructure/model/counter.dart';

part 'my_home_state.freezed.dart';

@freezed
class MyHomeState with _$MyHomeState {
  const factory MyHomeState({
    @Default(Counter(value: 0)) Counter counter,
  }) = _MyHomeState;
}
