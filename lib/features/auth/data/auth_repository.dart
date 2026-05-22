import '../domain/user_entity.dart';

// Handles network requests or local storage caching for Auth
class AuthRepository {
  Future<UserEntity> login(String email, String password) async {
    // Simulating an API call
    await Future.delayed(const Duration(seconds: 2));
    
    if (email == "test@hometweak.com" && password == "password") {
      return const UserEntity(id: "123", email: "test@hometweak.com", name: "Fitale");
    } else {
      throw Exception("Invalid credentials");
    }
  }
}
