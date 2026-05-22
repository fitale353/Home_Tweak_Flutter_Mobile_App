import 'package:flutter/material.dart';
import '../../data/auth_repository.dart';
import '../../domain/user_entity.dart';

enum AuthStatus { unauthenticated, loading, authenticated, error }

// Presentation State Management
class AuthProvider extends ChangeNotifier {
  final AuthRepository _repository = AuthRepository();
  
  UserEntity? _user;
  AuthStatus _status = AuthStatus.unauthenticated;
  String _errorMessage = '';

  UserEntity? get user => _user;
  AuthStatus get status => _status;
  String get errorMessage => _errorMessage;

  Future<bool> login(String email, String password) async {
    _status = AuthStatus.loading;
    notifyListeners();

    try {
      _user = await _repository.login(email, password);
      _status = AuthStatus.authenticated;
      notifyListeners();
      return true;
    } catch (e) {
      _status = AuthStatus.error;
      _errorMessage = e.toString();
      notifyListeners();
      return false;
    }
  }
}
