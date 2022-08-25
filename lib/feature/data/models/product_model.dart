// Project imports:
import 'package:test_market_app/feature/domain/entities/product_entiti.dart';

class ProductModel extends ProductEntiti {
  ProductModel({
    required final String cpu,
    required final String camera,
    required final List<String> capacity,
    required final List<String> color,
    required final String id,
    required final List<String> images,
    required final bool isFavorites,
    required final int price,
    required final double rating,
    required final String sd,
    required final String ssd,
    required final String title,
  }) : super(
          cpu: cpu,
          camera: camera,
          capacity: capacity,
          color: color,
          id: id,
          images: images,
          isFavorites: isFavorites,
          price: price,
          rating: rating,
          sd: sd,
          ssd: ssd,
          title: title,
        );

  factory ProductModel.fromJson(Map<String, dynamic> json) => ProductModel(
        cpu: json["CPU"] as String,
        camera: json["camera"] as String,
        capacity: List<String>.from(
            (json["capacity"] as List<dynamic>).map((json) => json).toList()),
        color: List<String>.from(
            (json["color"] as List<dynamic>).map((json) => json).toList()),
        id: json["id"] as String,
        images: List<String>.from(
            (json["images"] as List<dynamic>).map((json) => json).toList()),
        isFavorites: json["isFavorites"] as bool,
        price: json["price"] as int,
        rating: json["rating"] as double,
        sd: json["sd"] as String,
        ssd: json["ssd"] as String,
        title: json["title"] as String,
      );
}
