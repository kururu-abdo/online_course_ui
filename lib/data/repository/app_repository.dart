import 'package:online_learnig_ui/data/repository/auth/fiebase_auth_repo.dart';
import 'package:online_learnig_ui/data/repository/user/firebase_user_repository.dart';

class AppRepository {
  /// Repository
  static final authRepository = FirebaseAuthRepository();
  static final userRepository = FirebaseUserRepository();
  // static final productRepository = FirebaseProductRepository();
  // static final bannerRepository = FirebaseBannerRepository();
  // static final cartRepository = FirebaseCartRepository();
  // static final orderRepository = FirebaseOrderRepository();
  // static final feedbackRepository = FirebaseFeedbackRepository();
  // static final messageRepository = FirebaseMessageRepository();
  // static final storageRepository = StorageRepository();
  // static final locationRepository = LocationRepository();

  /// Singleton factory
  static final AppRepository _instance = AppRepository._internal();

  factory AppRepository() {
    return _instance;
  }
  AppRepository._internal();
}