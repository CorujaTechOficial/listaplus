// ignore_for_file: sort_constructors_first

import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_auth_mocks/firebase_auth_mocks.dart';
import 'package:firebase_auth_mocks/src/mock_user_credential.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:shopping_list/services/auth_service.dart';

class FakeGoogleSignInAccount extends Fake implements GoogleSignInAccount {
  final GoogleSignInAuthentication _authResult;
  final Object? _throwError;

  FakeGoogleSignInAccount(this._authResult, {Object? throwError})
      : _throwError = throwError;

  @override
  Future<GoogleSignInAuthentication> get authentication async {
    final error = _throwError;
    if (error != null) {
      throw error;
    }
    return _authResult;
  }
}

class FakeGoogleSignInAuthentication extends Fake
    implements GoogleSignInAuthentication {
  @override
  String? get accessToken => 'fake-access-token';

  @override
  String? get idToken => 'fake-id-token';
}

class FakeGoogleSignIn extends Fake implements GoogleSignIn {
  final GoogleSignInAccount? _account;
  final Object? _signInError;
  final Object? _signOutError;
  int signInCallCount = 0;
  int signOutCallCount = 0;

  FakeGoogleSignIn({
    GoogleSignInAccount? account,
    Object? signInError,
    Object? signOutError,
  })  : _account = account,
        _signInError = signInError,
        _signOutError = signOutError;

  @override
  Future<GoogleSignInAccount?> signIn() async {
    signInCallCount++;
    final error = _signInError;
    if (error != null) {
      throw error;
    }
    return _account;
  }

  @override
  Future<GoogleSignInAccount?> signOut() async {
    signOutCallCount++;
    final error = _signOutError;
    if (error != null) {
      throw error;
    }
    return null;
  }
}

/// A [MockUser] that overrides [linkWithCredential] to avoid the
/// isAnonymous assertion in [MockUserCredential].
// ignore: must_be_immutable
class MockUserWithLink extends MockUser {
  MockUserWithLink({required super.isAnonymous, super.uid});

  @override
  Future<UserCredential> linkWithCredential(AuthCredential credential) async {
    final newUser = MockUser(uid: uid, isAnonymous: false);
    return MockUserCredential(false, mockUser: newUser);
  }
}

void main() {
  const testUid = 'test-user-123';

  group('AuthService', () {
    test('constructor with mock auth creates instance', () {
      final mockAuth = MockFirebaseAuth(
        mockUser: MockUser(uid: testUid, isAnonymous: true),
        signedIn: true,
      );
      final service = AuthService(auth: mockAuth);
      expect(service, isA<AuthService>());
    });

    test('isAnonymous returns true for anonymous user', () {
      final mockAuth = MockFirebaseAuth(
        mockUser: MockUser(uid: testUid, isAnonymous: true),
        signedIn: true,
      );
      final service = AuthService(auth: mockAuth);
      expect(service.isAnonymous, true);
    });

    test('isAnonymous returns false for non-anonymous user', () {
      final mockAuth = MockFirebaseAuth(
        mockUser: MockUser(uid: testUid, isAnonymous: false),
        signedIn: true,
      );
      final service = AuthService(auth: mockAuth);
      expect(service.isAnonymous, false);
    });

    test('currentUser returns the authenticated user', () {
      final mockAuth = MockFirebaseAuth(
        mockUser: MockUser(uid: testUid),
        signedIn: true,
      );
      final service = AuthService(auth: mockAuth);
      expect(service.currentUser?.uid, testUid);
    });

    test('currentUser returns null when not signed in', () {
      final mockAuth = MockFirebaseAuth(signedIn: false);
      final service = AuthService(auth: mockAuth);
      expect(service.currentUser, isNull);
    });
  });

  group('AuthService.signInWithGoogle', () {
    late MockFirebaseAuth mockAuth;
    late FakeGoogleSignInAuthentication fakeAuthTokens;
    late FakeGoogleSignInAccount fakeAccount;

    setUp(() {
      mockAuth = MockFirebaseAuth(
        mockUser: MockUser(uid: testUid, isAnonymous: true),
        signedIn: true,
      );
      fakeAuthTokens = FakeGoogleSignInAuthentication();
      fakeAccount = FakeGoogleSignInAccount(fakeAuthTokens);
    });

    test('returns null when Google sign-in is cancelled', () async {
      final googleSignIn = FakeGoogleSignIn(account: null);
      final service = AuthService(auth: mockAuth, googleSignIn: googleSignIn);

      final result = await service.signInWithGoogle();

      expect(result, isNull);
      expect(googleSignIn.signInCallCount, 1);
    });

    test('returns user and links with anonymous account', () async {
      final linkMockUser = MockUserWithLink(
        uid: testUid,
        isAnonymous: true,
      );
      final linkMockAuth = MockFirebaseAuth(
        mockUser: linkMockUser,
        signedIn: true,
      );
      final googleSignIn = FakeGoogleSignIn(account: fakeAccount);
      final service = AuthService(
        auth: linkMockAuth,
        googleSignIn: googleSignIn,
      );

      final result = await service.signInWithGoogle();

      expect(result, isNotNull);
      expect(result?.uid, testUid);
      expect(googleSignIn.signInCallCount, 1);
    });

    test('returns user and signs in with credential for non-anonymous', () async {
      final nonAnonymousAuth = MockFirebaseAuth(
        mockUser: MockUser(uid: testUid, isAnonymous: false),
        signedIn: true,
      );
      final googleSignIn = FakeGoogleSignIn(account: fakeAccount);
      final service = AuthService(
        auth: nonAnonymousAuth,
        googleSignIn: googleSignIn,
      );

      final result = await service.signInWithGoogle();

      expect(result, isNotNull);
      expect(result?.uid, testUid);
    });

    test('returns user when no current user was signed in', () async {
      final noUserAuth = MockFirebaseAuth(signedIn: false);
      final googleSignIn = FakeGoogleSignIn(account: fakeAccount);
      final service = AuthService(
        auth: noUserAuth,
        googleSignIn: googleSignIn,
      );

      final result = await service.signInWithGoogle();

      expect(result, isNotNull);
    });

    test('throws when Google authentication token retrieval fails', () async {
      final throwingAccount = FakeGoogleSignInAccount(
        // ignore: prefer_int_literals
        FakeGoogleSignInAuthentication(),
        throwError: Exception('Auth token failed'),
      );

      final googleSignIn = FakeGoogleSignIn(account: throwingAccount);
      final service = AuthService(auth: mockAuth, googleSignIn: googleSignIn);

      expect(
        () async => service.signInWithGoogle(),
        throwsA(isA<Exception>()),
      );
    });

    test('throws when googleUser.signIn throws', () async {
      final googleSignIn = FakeGoogleSignIn(
        signInError: Exception('Network error'),
      );
      final service = AuthService(auth: mockAuth, googleSignIn: googleSignIn);

      expect(
        () async => service.signInWithGoogle(),
        throwsA(isA<Exception>()),
      );
    });
  });

  group('AuthService.signOut', () {
    test('signs out from Firebase Auth and Google, then re-anonymizes', () async {
      final mockAuth = MockFirebaseAuth(
        mockUser: MockUser(uid: testUid, isAnonymous: true),
        signedIn: true,
      );
      final googleSignIn = FakeGoogleSignIn(account: null);

      final service = AuthService(auth: mockAuth, googleSignIn: googleSignIn);

      await service.signOut();

      expect(googleSignIn.signOutCallCount, 1);
    });
  });
}
