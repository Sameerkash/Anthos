import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:anthos/views/home/home.vm.dart';
import '../services/repository.dart';

final repositoryProvider = Provider<Repository>(
  (ref) => Repository(),
);

final homeProvider = StateNotifierProvider<HomeVM, HomeState>((ref) {
  return HomeVM(ref);
});
