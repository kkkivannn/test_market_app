import 'package:test_market_app/feature/domain/entities/basket_entiti.dart';

class BasketModel extends BasketEntiti {
  BasketModel({
    required final int id,
    required final String images,
    required final int price,
    required final String title,
  }) : super(
          id: id,
          images: images,
          price: price,
          title: title,
        );
  factory BasketModel.fromJson(Map<String, dynamic> json) => BasketModel(
        id: json["id"] as int,
        images: json["images"] as String,
        price: json["price"] as int,
        title: json["title"] as String,
      );
}
