import 'package:firebase_auth/firebase_auth.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'auth_service_provider.dart';

part 'auth_provider.g.dart';

@riverpod
Stream<User?> auth(Ref ref) {
  final authService = ref.watch(authServiceProvider);
  return authService.authStateChanges;
}
