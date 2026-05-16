import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../services/auth_service.dart';

// coverage:ignore-start
final authServiceProvider = Provider<AuthService>((ref) {
  return AuthService();
});
// coverage:ignore-end
