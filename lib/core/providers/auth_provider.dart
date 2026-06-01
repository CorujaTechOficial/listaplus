import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import '../../services/auth_service.dart';

part 'auth_provider.g.dart';

@Riverpod(keepAlive: true)
Stream<User?> auth(Ref ref) {
  final authService = ref.watch(authServiceProvider);
  return authService.authStateChanges;
}

final authServiceProvider = Provider<AuthService>((ref) {
  return AuthService();
});
