
import 'package:firebase_auth/firebase_auth.dart';
import 'package:online_learnig_ui/data/models/user_model.dart';
import 'package:online_learnig_ui/data/repository/auth/auth_repository.dart';
import 'package:online_learnig_ui/data/repository/user/firebase_user_repository.dart';
import 'package:online_learnig_ui/data/repository/user/user_repository.dart';

class FirebaseAuthRepository implements AuthRepository {
  final FirebaseAuth _firebaseAuth = FirebaseAuth.instance;
  // GoogleSignIn _googleSignIn = GoogleSignIn();
  final UserRepository _userRepository = FirebaseUserRepository();
  String _authException = "Authentication Failure";
  @override
  User get loggedFirebaseUser => _firebaseAuth.currentUser!;
  @override
  String get authException => _authException;

  /// Don't use onAuthChange

  /// Creates a new user with the provided [information]
  /// Created by NDH
  @override
  Future<void> signUp(UserModel newUser, String password) async {
    try {
      var userCredential = await _firebaseAuth.createUserWithEmailAndPassword(
        email: newUser.email,
        password: password,
      );
      // Add id for new user
      newUser = newUser.cloneWith(id: userCredential.user!.uid);

      // Create new doc in users collection
      await _userRepository.addUserData(newUser);
    } on FirebaseAuthException catch (e) {
      _authException = e.message.toString();
    }
  }

  /// Signs in with the provided [email] and [password].
  /// Created by NDH
  @override
  Future<void> logInWithEmailAndPassword(String email, String password) async {
    try {
      await _firebaseAuth.signInWithEmailAndPassword(
        email: email,
        password: password,
      );
    } on FirebaseAuthException catch (e) {
      _authException = e.message.toString();
    }
  }

  // /// Starts the Sign In with Google Flow.
  // /// Created by NDH
  // Future<void> logInWithGoogle() async {
  //   try {
  //     final googleUser =
  //         await (_googleSignIn.signIn() as Future<GoogleSignInAccount>);
  //     final googleAuth = await googleUser.authentication;
  //     final credential = GoogleAuthProvider.credential(
  //       accessToken: googleAuth.accessToken,
  //       idToken: googleAuth.idToken,
  //     );
  //     await _firebaseAuth.signInWithCredential(credential);
  //   } on FirebaseAuthException catch (e) {
  //     _authException = e.message.toString();
  //   }
  // }

  @override
  bool isLoggedIn() => _firebaseAuth.currentUser != null;

  /// Signs out the current user
  /// Created by NDH
  @override
  Future<void> logOut() async {
    await _firebaseAuth.signOut().catchError((error) {
      print(error);
    });
  }

  ///Singleton factory
  static final FirebaseAuthRepository _instance =
      FirebaseAuthRepository._internal();

  factory FirebaseAuthRepository() {
    return _instance;
  }

  FirebaseAuthRepository._internal();
}