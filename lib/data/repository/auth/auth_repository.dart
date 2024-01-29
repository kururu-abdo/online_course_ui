import 'package:firebase_auth/firebase_auth.dart';
import 'package:online_learnig_ui/data/models/user_model.dart';

abstract class AuthRepository {
  User get loggedFirebaseUser;
  String get authException;

  /// Creates a new user with the provided [information]
  /// Created by NDH
  Future<void> signUp(UserModel newUser, String password);

  /// Signs in with the provided [email] and [password].
  /// Created by NDH
  Future<void> logInWithEmailAndPassword(String email, String password);

  /// Starts the Sign In with Google Flow.
  /// Created by NDH
  // Future<void> logInWithGoogle();

  bool isLoggedIn();

  /// Signs out the current user
  /// Created by NDH
  Future<void> logOut();
}