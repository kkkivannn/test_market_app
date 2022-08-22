// Project imports:
import 'package:test_market_app/feature/data/models/best_seller_model.dart';
import 'package:test_market_app/feature/data/models/hot_sales_model.dart';

class BestSellerAndHotSalesEntiti {
  final List<BestSellerModel> bestSellerModel;
  final List<HotSalesModel> hotSalesModel;

  BestSellerAndHotSalesEntiti({
    required this.bestSellerModel,
    required this.hotSalesModel,
  });
}
