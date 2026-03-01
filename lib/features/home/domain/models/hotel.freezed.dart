// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'hotel.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$Hotel {

 String get id; String get name; String get location; String get image; double get rating; double get pricePerNight; String get description;
/// Create a copy of Hotel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$HotelCopyWith<Hotel> get copyWith => _$HotelCopyWithImpl<Hotel>(this as Hotel, _$identity);

  /// Serializes this Hotel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Hotel&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.location, location) || other.location == location)&&(identical(other.image, image) || other.image == image)&&(identical(other.rating, rating) || other.rating == rating)&&(identical(other.pricePerNight, pricePerNight) || other.pricePerNight == pricePerNight)&&(identical(other.description, description) || other.description == description));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,location,image,rating,pricePerNight,description);

@override
String toString() {
  return 'Hotel(id: $id, name: $name, location: $location, image: $image, rating: $rating, pricePerNight: $pricePerNight, description: $description)';
}


}

/// @nodoc
abstract mixin class $HotelCopyWith<$Res>  {
  factory $HotelCopyWith(Hotel value, $Res Function(Hotel) _then) = _$HotelCopyWithImpl;
@useResult
$Res call({
 String id, String name, String location, String image, double rating, double pricePerNight, String description
});




}
/// @nodoc
class _$HotelCopyWithImpl<$Res>
    implements $HotelCopyWith<$Res> {
  _$HotelCopyWithImpl(this._self, this._then);

  final Hotel _self;
  final $Res Function(Hotel) _then;

/// Create a copy of Hotel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? name = null,Object? location = null,Object? image = null,Object? rating = null,Object? pricePerNight = null,Object? description = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,location: null == location ? _self.location : location // ignore: cast_nullable_to_non_nullable
as String,image: null == image ? _self.image : image // ignore: cast_nullable_to_non_nullable
as String,rating: null == rating ? _self.rating : rating // ignore: cast_nullable_to_non_nullable
as double,pricePerNight: null == pricePerNight ? _self.pricePerNight : pricePerNight // ignore: cast_nullable_to_non_nullable
as double,description: null == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [Hotel].
extension HotelPatterns on Hotel {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _Hotel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Hotel() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _Hotel value)  $default,){
final _that = this;
switch (_that) {
case _Hotel():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _Hotel value)?  $default,){
final _that = this;
switch (_that) {
case _Hotel() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String name,  String location,  String image,  double rating,  double pricePerNight,  String description)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Hotel() when $default != null:
return $default(_that.id,_that.name,_that.location,_that.image,_that.rating,_that.pricePerNight,_that.description);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String name,  String location,  String image,  double rating,  double pricePerNight,  String description)  $default,) {final _that = this;
switch (_that) {
case _Hotel():
return $default(_that.id,_that.name,_that.location,_that.image,_that.rating,_that.pricePerNight,_that.description);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String name,  String location,  String image,  double rating,  double pricePerNight,  String description)?  $default,) {final _that = this;
switch (_that) {
case _Hotel() when $default != null:
return $default(_that.id,_that.name,_that.location,_that.image,_that.rating,_that.pricePerNight,_that.description);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _Hotel implements Hotel {
  const _Hotel({required this.id, required this.name, required this.location, required this.image, required this.rating, required this.pricePerNight, required this.description});
  factory _Hotel.fromJson(Map<String, dynamic> json) => _$HotelFromJson(json);

@override final  String id;
@override final  String name;
@override final  String location;
@override final  String image;
@override final  double rating;
@override final  double pricePerNight;
@override final  String description;

/// Create a copy of Hotel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$HotelCopyWith<_Hotel> get copyWith => __$HotelCopyWithImpl<_Hotel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$HotelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Hotel&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.location, location) || other.location == location)&&(identical(other.image, image) || other.image == image)&&(identical(other.rating, rating) || other.rating == rating)&&(identical(other.pricePerNight, pricePerNight) || other.pricePerNight == pricePerNight)&&(identical(other.description, description) || other.description == description));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,location,image,rating,pricePerNight,description);

@override
String toString() {
  return 'Hotel(id: $id, name: $name, location: $location, image: $image, rating: $rating, pricePerNight: $pricePerNight, description: $description)';
}


}

/// @nodoc
abstract mixin class _$HotelCopyWith<$Res> implements $HotelCopyWith<$Res> {
  factory _$HotelCopyWith(_Hotel value, $Res Function(_Hotel) _then) = __$HotelCopyWithImpl;
@override @useResult
$Res call({
 String id, String name, String location, String image, double rating, double pricePerNight, String description
});




}
/// @nodoc
class __$HotelCopyWithImpl<$Res>
    implements _$HotelCopyWith<$Res> {
  __$HotelCopyWithImpl(this._self, this._then);

  final _Hotel _self;
  final $Res Function(_Hotel) _then;

/// Create a copy of Hotel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? name = null,Object? location = null,Object? image = null,Object? rating = null,Object? pricePerNight = null,Object? description = null,}) {
  return _then(_Hotel(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,location: null == location ? _self.location : location // ignore: cast_nullable_to_non_nullable
as String,image: null == image ? _self.image : image // ignore: cast_nullable_to_non_nullable
as String,rating: null == rating ? _self.rating : rating // ignore: cast_nullable_to_non_nullable
as double,pricePerNight: null == pricePerNight ? _self.pricePerNight : pricePerNight // ignore: cast_nullable_to_non_nullable
as double,description: null == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
