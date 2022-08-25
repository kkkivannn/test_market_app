// Project imports:
import 'package:test_market_app/feature/data/models/best_seller_and_hot_sales.dart';
import 'package:test_market_app/feature/data/models/product_model.dart';

abstract class MarketRemoteDataSource {
  Future<BestSellerAndHotSelesModels> getBestSeller(String endpoint);
  Future<ProductModel> getProduct(String endpoint);
}
