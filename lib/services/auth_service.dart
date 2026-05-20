import 'package:firebase_auth/firebase_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:sign_in_with_apple/sign_in_with_apple.dart';

// coverage:ignore-start
class AuthService {
  AuthService({
    FirebaseAuth? auth,
    GoogleSignIn? googleSignIn,
  })  : _auth = auth ?? FirebaseAuth.instance,
        _googleSignIn = googleSignIn ?? GoogleSignIn();

  final FirebaseAuth _auth;
  final GoogleSignIn _googleSignIn;

  Stream<User?> get authStateChanges => _auth.authStateChanges();

  User? get currentUser => _auth.currentUser;

  bool get isAnonymous => _auth.currentUser?.isAnonymous ?? true;

  Future<User?> signInWithGoogle() async {
    final googleUser = await _googleSignIn.signIn();
    if (googleUser == null) {
      return null;
    }

    final googleAuth = await googleUser.authentication;
    final accessToken = googleAuth.accessToken;
    final idToken = googleAuth.idToken;
    if (accessToken == null || idToken == null) {
      return null;
    }
    final credential = GoogleAuthProvider.credential(
      accessToken: accessToken,
      idToken: idToken,
    );

    final user = _auth.currentUser;
    UserCredential result;
    if (user != null && user.isAnonymous) {
      result = await user.linkWithCredential(credential);
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
      final result = await user.linkWithCredential(oauthCredential);
      return result.user;
    }

    final result = await _auth.signInWithCredential(oauthCredential);
    return result.user;
  }

  Future<void> signOut() async {
    await _auth.signOut();
    await _googleSignIn.signOut();
    await _auth.signInAnonymously();
  }
}
// coverage:ignore-end