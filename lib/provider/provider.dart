import 'package:anthos/views/auth/auth.vm.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import '../views/home/home.vm.dart';
import '../services/repository.dart';

final repositoryProvider = Provider<Repository>(
  (ref) => Repository(),
);

final homeProvider = StateNotifierProvider<HomeVM, HomeState>((ref) {
  return HomeVM(ref);
});

final authProvider = StateNotifierProvider<AuthVM, AuthState>((ref) {
  return AuthVM(ref);
});
