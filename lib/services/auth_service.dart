import 'package:firebase_auth/firebase_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:sign_in_with_apple/sign_in_with_apple.dart';

// coverage:ignore-start
class AuthService {
  AuthService({
    FirebaseAuth? auth,
    GoogleSignIn? googleSignIn,
  })  : _auth = auth ?? FirebaseAuth.instance,
        _googleSignIn = googleSignIn ?? GoogleSignIn.instance;

  final FirebaseAuth _auth;
  final GoogleSignIn _googleSignIn;

  Stream<User?> get authStateChanges => _auth.authStateChanges();

  User? get currentUser => _auth.currentUser;

  bool get isAnonymous => _auth.currentUser?.isAnonymous ?? true;

  Future<User?> signInWithGoogle() async {
    final googleUser = await _googleSignIn.authenticate();

    final googleAuth = googleUser.authentication;
    final idToken = googleAuth.idToken;
    if (idToken == null) {
      return null;
    }
    final credential = GoogleAuthProvider.credential(
      idToken: idToken,
    );

    final user = _auth.currentUser;
    UserCredential result;
    if (user != null && user.isAnonymous) {
      try {
        result = await user.linkWithCredential(credential);
      } on FirebaseAuthException catch (e) {
        if (e.code == 'credential-already-in-use') {
          result = await _auth.signInWithCredential(credential);
        } else {
          rethrow;
        }
      }
    } else {
      result = await _auth.signInWithCredential(credential);
    }
    return result.user;
  }

  Future<User?> signInWithApple() async {
    final appleCredential = await SignInWithApple.getAppleIDCredential(
      scopes: [
        AppleIDAuthorizationScopes.email,
        AppleIDAuthorizationScopes.fullName,
      ],
    );

    final identityToken = appleCredential.identityToken;
    final authorizationCode = appleCredential.authorizationCode;
    if (identityToken == null) {
      return null;
    }
    final oauthCredential = OAuthProvider('apple.com').credential(
      idToken: identityToken,
      accessToken: authorizationCode,
    );

    final user = _auth.currentUser;
    if (user != null && user.isAnonymous) {
      try {
        final result = await user.linkWithCredential(oauthCredential);
        return result.user;
      } on FirebaseAuthException catch (e) {
        if (e.code == 'credential-already-in-use') {
          final result = await _auth.signInWithCredential(oauthCredential);
          return result.user;
        } else {
          rethrow;
        }
      }
    }

    final result = await _auth.signInWithCredential(oauthCredential);
    return result.user;
  }

  Future<void> signOut() async {
    await _auth.signOut();
    await _googleSignIn.signOut();
    try {
      await _auth.signInAnonymously();
    } on Exception catch (e) {
      // If anonymous sign in fails after sign out, we can't do much but log it
      // In a real app we might show a retry button or force a full login
      assert(() {
        // ignore: avoid_print
        print('AuthService: Failed to sign in anonymously after sign out: $e');
        return true;
      }());
    }
  }
}
// coverage:ignore-end