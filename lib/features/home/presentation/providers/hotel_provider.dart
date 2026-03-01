import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../data/repositories/hotel_repository.dart';
import '../../domain/models/hotel.dart';

final hotelsProvider = FutureProvider<List<Hotel>>((ref) async {
  final repository = ref.watch(hotelRepositoryProvider);
  return repository.getHotels();
});
