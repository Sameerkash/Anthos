import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
part 'home.vm.freezed.dart';

@freezed
class HomeState with _$HomeState {
  const factory HomeState.loading() = _Loading;
  const factory HomeState.data() = _Data;
  const factory HomeState.error() = _Error;
}

class HomeVM extends StateNotifier<HomeState> {
  HomeVM(HomeState state) : super(state);
}
