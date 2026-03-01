import 'package:flutter_riverpod/legacy.dart';
import 'package:riverpod_template/features/auth/data/repositoreis/auth_repository.dart';
import '../../domain/models/login_request.dart';
import 'auth_state.dart';

final authProvider = StateNotifierProvider<AuthNotifier, AuthState>((ref) {
  return AuthNotifier(ref.watch(authRepositoryProvider));
});

class AuthNotifier extends StateNotifier<AuthState> {
  final AuthRepository _authRepository;

  AuthNotifier(this._authRepository) : super(const AuthState.initial());

  Future<void> login(String email, String password) async {
    state = const AuthState.loading();

    try {
      final request = LoginRequest(email: email, password: password);
      final user = await _authRepository.login(request);
      state = AuthState.authenticated(user);
    } catch (e) {
      state = AuthState.error(e.toString());
    }
  }

  Future<void> logout() async {
    await _authRepository.logout();
    state = const AuthState.unauthenticated();
  }
}
