import 'package:firebase_auth/firebase_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:rxdart/rxdart.dart';

class AuthService {
  // Initializing Firebase services.
  final GoogleSignIn _googleSignIn = GoogleSignIn();
  final FirebaseAuth _firebaseAuth = FirebaseAuth.instance;
  final Firestore _firestore = Firestore.instance;

  Observable<FirebaseUser> user;
  Observable<Map<String, dynamic>> profile;
  final loading = PublishSubject();

  AuthService() {}

  Future<FirebaseUser> googleSignIn() async {}

  void updateUserData(FirebaseUser user) async {}

  void signOut() {}

  dispose() {
    loading.close();
  }
}

final AuthService authService = AuthService();
