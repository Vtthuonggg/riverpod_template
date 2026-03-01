import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../../../core/constants/api_constants.dart';
import '../../../../core/network/dio_client.dart';
import '../../domain/models/user.dart';
import '../../domain/models/login_request.dart';

final authRepositoryProvider = Provider<AuthRepository>((ref) {
  final dioClient = ref.watch(dioClientProvider);
  return AuthRepository(dioClient);
});

class AuthRepository {
  final DioClient _dioClient;

  AuthRepository(this._dioClient);

  Future<User> login(LoginRequest request) async {
    try {
      final response = await _dioClient.post(
        ApiConstants.loginEndpoint, // '/auth/login'
        data: request.toJson(), // {email: "...", password: "..."}
      );

      final responseData = response.data as Map<String, dynamic>;
      final userData = responseData['data'] as Map<String, dynamic>;
      final token = responseData['token'] as String?;

      if (token != null) {
        // await _saveToken(token);
        print('Token saved: $token');
      }

      return User.fromJson(userData);
    } catch (e) {
      print('Login error: $e');
      rethrow;
    }
  }

  Future<void> logout() async {
    try {
      await _dioClient.post(ApiConstants.logoutEndpoint);

      // TODO: Clear token from storage
      // await _clearToken();
      print('Logout successful');
    } catch (e) {
      print('Logout error: $e');
      // Không throw error, vẫn clear local data
    }
  }

  // ✅ Register với Dio (bonus)
  Future<User> register({
    required String email,
    required String password,
    required String name,
  }) async {
    try {
      final response = await _dioClient.post(
        ApiConstants.registerEndpoint,
        data: {'email': email, 'password': password, 'name': name},
      );

      final responseData = response.data as Map<String, dynamic>;
      final userData = responseData['data'] as Map<String, dynamic>;
      final token = responseData['token'] as String?;

      if (token != null) {
        print('Token saved: $token');
      }

      return User.fromJson(userData);
    } catch (e) {
      print('Register error: $e');
      rethrow;
    }
  }

  // ✅ Get Profile với Dio (bonus)
  Future<User> getProfile() async {
    try {
      // TODO: Add token to headers
      // final token = await _getToken();
      final response = await _dioClient.get(
        ApiConstants.profileEndpoint,
        // options: Options(
        //   headers: {'Authorization': 'Bearer $token'},
        // ),
      );

      final responseData = response.data as Map<String, dynamic>;
      final userData = responseData['data'] as Map<String, dynamic>;

      return User.fromJson(userData);
    } catch (e) {
      print('Get profile error: $e');
      rethrow;
    }
  }

  // ✅ Refresh Token với Dio (bonus)
  Future<String> refreshToken(String refreshToken) async {
    try {
      final response = await _dioClient.post(
        ApiConstants.refreshTokenEndpoint,
        data: {'refresh_token': refreshToken},
      );

      final responseData = response.data as Map<String, dynamic>;
      return responseData['token'] as String;
    } catch (e) {
      print('Refresh token error: $e');
      rethrow;
    }
  }

  // ✅ Upload Avatar với Dio (bonus - multipart)
  Future<String> uploadAvatar(String filePath) async {
    try {
      final formData = FormData.fromMap({
        'avatar': await MultipartFile.fromFile(filePath),
      });

      final response = await _dioClient.post('/profile/avatar', data: formData);

      final responseData = response.data as Map<String, dynamic>;
      return responseData['avatar_url'] as String;
    } catch (e) {
      print('Upload avatar error: $e');
      rethrow;
    }
  }
}
