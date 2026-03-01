import 'package:freezed_annotation/freezed_annotation.dart';

part 'hotel.freezed.dart';
part 'hotel.g.dart';

@freezed
abstract class Hotel with _$Hotel {
  const factory Hotel({
    required String id,
    required String name,
    required String location,
    required String image,
    required double rating,
    required double pricePerNight,
    required String description,
  }) = _Hotel;

  factory Hotel.fromJson(Map<String, dynamic> json) => _$HotelFromJson(json);
}
