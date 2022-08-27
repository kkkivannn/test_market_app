import 'package:test_market_app/feature/data/models/basket_model.dart';
import 'package:test_market_app/feature/domain/entities/bag_entiti.dart';
import 'package:test_market_app/feature/domain/entities/basket_entiti.dart';

class BagModel extends BagEntiti {
  BagModel({
    required final List<BasketEntiti> basket,
    required final String delivery,
    required final String id,
    required final int total,
  }) : super(
          basket: basket,
          delivery: delivery,
          id: id,
          total: total,
        );

  factory BagModel.fromJson(Map<String, dynamic> json) => BagModel(
        basket: List<BasketModel>.from(
          (json["basket"] as List<dynamic>)
              .map((json) => BasketModel.fromJson(json))
              .toList(),
        ),
        delivery: json["delivery"] as String,
        id: json["id"] as String,
        total: json["total"] as int,
      );
}
