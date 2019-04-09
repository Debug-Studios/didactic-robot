import 'package:firebase_auth/firebase_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:rxdart/rxdart.dart';

class AuthBloc {
  // Initializing Firebase services.
  final GoogleSignIn _googleSignIn = GoogleSignIn();
  final FirebaseAuth _firebaseAuth = FirebaseAuth.instance;
  final Firestore _firestore = Firestore.instance;

  Observable<FirebaseUser> user;
  Observable<Map<String, dynamic>> profile;
  final loading = PublishSubject();

  AuthBloc() {
    user = Observable(_firebaseAuth.onAuthStateChanged);

    profile = user.switchMap((FirebaseUser u) {
      if (u != null) {
        return _firestore
            .collection('users')
            .document(u.uid)
            .snapshots()
            .map((snap) => snap.data);
      } else {
        return Observable.just({});
      }
    });
  }

  Future<FirebaseUser> googleSignIn() async {
    loading.add(true);

    final googleUser = await _googleSignIn.signIn();

    if (googleUser == null) {
      return null;
    }

    final googleAuth = await googleUser.authentication;
    final authCredential = GoogleAuthProvider.getCredential(
        accessToken: googleAuth.accessToken, idToken: googleAuth.idToken);

    final user = await _firebaseAuth.signInWithCredential(authCredential);
    loading.add(false);
    updateUserData(user);
    return user;
  }

  void updateUserData(FirebaseUser user) async {
    final ref = _firestore.collection('users').document(user.uid);

    return ref.setData({
      'uid': user.uid,
      'email': user.email,
      'photoUrl': user.photoUrl,
      'displayName': user.displayName,
      'phoneNumber': user.phoneNumber
    }, merge: true);
  }

  void signOut() {
    _firebaseAuth.signOut();
  }

  dispose() {
    loading.close();
  }
}

final AuthBloc authBloc = AuthBloc();
