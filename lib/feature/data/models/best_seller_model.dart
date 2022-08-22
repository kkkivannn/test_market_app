// Project imports:
import 'package:test_market_app/feature/domain/entities/best_seller_entiti.dart';

class BestSellerModel extends BestSellerEntiti {
  BestSellerModel({
    required final String name,
    required final String image,
    required final int discountPrice,
    required final int priceWithoutDiscount,
    required final bool isFavorites,
  }) : super(
          name: name,
          image: image,
          discountPrice: discountPrice,
          priceWithoutDiscount: priceWithoutDiscount,
          isFavorites: isFavorites,
        );

  factory BestSellerModel.fromJson(Map<String, dynamic> json) {
    return BestSellerModel(
      name: json['title'],
      image: json['picture'],
      discountPrice: json['discount_price'],
      priceWithoutDiscount: json['price_without_discount'],
      isFavorites: json['is_favorites'],
    );
  }
}
