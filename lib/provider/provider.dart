import 'package:anthos/services/repository.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final repositoryProvider = Provider<Repository>(
  (ref) => Repository(),
);


