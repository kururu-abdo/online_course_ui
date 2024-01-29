
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:online_learnig_ui/data/models/user_model.dart';
import 'package:online_learnig_ui/data/repository/user/user_repository.dart';

class FirebaseUserRepository implements UserRepository {
  final _userCollection = FirebaseFirestore.instance.collection("users");

  /// Stream of logged user model
  /// [loggedFirebaseUser] is user of firebase auth
  /// Created by NDH
  @override
  Stream<UserModel> loggedUserStream(User loggedFirebaseUser) {
    return _userCollection
        .doc(loggedFirebaseUser.uid)
        .snapshots()
        .map((doc) => UserModel.fromMap(doc.data()!));
  }

  /// Get user by id
  /// [uid] is user id
  /// Created by NDH
  @override
  Future<UserModel> getUserById(String uid) async {
    return await _userCollection
        .doc(uid)
        .get()
        .then((doc) => UserModel.fromMap(doc.data()!))
        .catchError((error) {});
  }

  /// Add new doc to users collection
  /// [user] is data of new user
  /// Created by NDH
  @override
  Future<void> addUserData(UserModel newUser) async {
    await _userCollection
        .doc(newUser.id)
        .set(newUser.toMap())
        .catchError((error) => print(error));
  }

  /// Update a doc in users collection
  /// [user] is updated data of user
  /// Created by NDH
  @override
  Future<void> updateUserData(UserModel updatedUser) async {
    await _userCollection.doc(updatedUser.id).get().then((doc) async {
      if (doc.exists) {
        // update
        await doc.reference.update(updatedUser.toMap());
      }
    }).catchError((error) {});
  }

  ///Singleton factory
  static final FirebaseUserRepository _instance =
      FirebaseUserRepository._internal();

  factory FirebaseUserRepository() {
    return _instance;
  }

  FirebaseUserRepository._internal();
}