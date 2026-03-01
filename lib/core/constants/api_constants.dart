import '../config/env_config.dart';

class ApiConstants {
  ApiConstants._();

  // Base URLs (from .env)
  static String get baseUrl => EnvConfig.apiBaseUrl;

  // API Endpoints
  // Auth
  static const String loginEndpoint = '/auth/login';
  static const String logoutEndpoint = '/auth/logout';
  static const String registerEndpoint = '/auth/register';
  static const String refreshTokenEndpoint = '/auth/refresh';
  static const String forgotPasswordEndpoint = '/auth/forgot-password';
  static const String resetPasswordEndpoint = '/auth/reset-password';

  // Profile
  static const String profileEndpoint = '/profile';
  static const String updateProfileEndpoint = '/profile/update';
  static const String changePasswordEndpoint = '/profile/change-password';

  // Hotels
  static const String hotelsEndpoint = '/hotels';
  static String hotelDetailEndpoint(String id) => '/hotels/$id';
  static String hotelSearchEndpoint = '/hotels/search';
  static String hotelsByLocationEndpoint(String location) =>
      '/hotels/location/$location';

  // Bookings
  static const String bookingsEndpoint = '/bookings';
  static String bookingDetailEndpoint(String id) => '/bookings/$id';
  static String createBookingEndpoint = '/bookings/create';
  static String cancelBookingEndpoint(String id) => '/bookings/$id/cancel';

  // Reviews
  static String hotelReviewsEndpoint(String hotelId) =>
      '/hotels/$hotelId/reviews';
  static const String createReviewEndpoint = '/reviews/create';

  // Favorites
  static const String favoritesEndpoint = '/favorites';
  static String addFavoriteEndpoint(String hotelId) => '/favorites/$hotelId';
  static String removeFavoriteEndpoint(String hotelId) => '/favorites/$hotelId';

  // Payments
  static const String paymentsEndpoint = '/payments';
  static String paymentDetailEndpoint(String id) => '/payments/$id';

  // Full URLs (combine base + endpoint)
  static String get loginUrl => '$baseUrl$loginEndpoint';
  static String get logoutUrl => '$baseUrl$logoutEndpoint';
  static String get hotelsUrl => '$baseUrl$hotelsEndpoint';

  // Timeouts
  static Duration get connectTimeout =>
      Duration(seconds: EnvConfig.connectTimeout);
  static Duration get receiveTimeout =>
      Duration(seconds: EnvConfig.receiveTimeout);

  // Headers
  static Map<String, String> get defaultHeaders => {
    'Content-Type': 'application/json',
    'Accept': 'application/json',
    'X-API-Key': EnvConfig.apiKey,
  };

  static Map<String, String> authHeaders(String token) => {
    ...defaultHeaders,
    'Authorization': 'Bearer $token',
  };
}
