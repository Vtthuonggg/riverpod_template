// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'hotel.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_Hotel _$HotelFromJson(Map<String, dynamic> json) => _Hotel(
  id: json['id'] as String,
  name: json['name'] as String,
  location: json['location'] as String,
  image: json['image'] as String,
  rating: (json['rating'] as num).toDouble(),
  pricePerNight: (json['pricePerNight'] as num).toDouble(),
  description: json['description'] as String,
);

Map<String, dynamic> _$HotelToJson(_Hotel instance) => <String, dynamic>{
  'id': instance.id,
  'name': instance.name,
  'location': instance.location,
  'image': instance.image,
  'rating': instance.rating,
  'pricePerNight': instance.pricePerNight,
  'description': instance.description,
};
