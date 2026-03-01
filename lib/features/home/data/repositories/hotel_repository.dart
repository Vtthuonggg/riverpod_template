import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../domain/models/hotel.dart';

final hotelRepositoryProvider = Provider<HotelRepository>((ref) {
  return HotelRepository();
});

class HotelRepository {
  Future<List<Hotel>> getHotels() async {
    // Simulate API delay
    await Future.delayed(const Duration(seconds: 1));

    // Mock data
    return [
      const Hotel(
        id: '1',
        name: 'Grand Hotel',
        location: 'New York, USA',
        image: 'https://images.unsplash.com/photo-1566073771259-6a8506099945',
        rating: 4.5,
        pricePerNight: 150.0,
        description: 'Luxury hotel in the heart of the city',
      ),
      const Hotel(
        id: '2',
        name: 'Beach Resort',
        location: 'Miami, USA',
        image: 'https://images.unsplash.com/photo-1520250497591-112f2f40a3f4',
        rating: 4.8,
        pricePerNight: 200.0,
        description: 'Beautiful beachfront resort',
      ),
      const Hotel(
        id: '3',
        name: 'Mountain Lodge',
        location: 'Colorado, USA',
        image: 'https://images.unsplash.com/photo-1571896349842-33c89424de2d',
        rating: 4.3,
        pricePerNight: 120.0,
        description: 'Cozy lodge with mountain views',
      ),
    ];
  }
}
