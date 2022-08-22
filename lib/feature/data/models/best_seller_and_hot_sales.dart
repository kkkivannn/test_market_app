// Project imports:
import 'package:test_market_app/feature/data/models/best_seller_model.dart';
import 'package:test_market_app/feature/data/models/hot_sales_model.dart';
import 'package:test_market_app/feature/domain/entities/best_seller_and_hot_sales_entiti.dart';

class BestSellerAndHotSelesModels extends BestSellerAndHotSalesEntiti {
  BestSellerAndHotSelesModels({
    required final bestSellerModel,
    required final hotSalesModel,
  }) : super(
          bestSellerModel: bestSellerModel,
          hotSalesModel: hotSalesModel,
        );
  factory BestSellerAndHotSelesModels.fromJson(Map<String, dynamic> json) {
    return BestSellerAndHotSelesModels(
      bestSellerModel: List<BestSellerModel>.from(
        (json['best_seller'] as List<dynamic>)
            .map((json) => BestSellerModel.fromJson(json))
            .toList(),
      ),
      hotSalesModel: List<HotSalesModel>.from(
        (json['home_store'] as List<dynamic>)
            .map((json) => HotSalesModel.fromJson(json))
            .toList(),
      ),
    );
  }
}
