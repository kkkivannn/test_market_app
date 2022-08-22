// Project imports:
import 'package:test_market_app/feature/data/models/best_seller_and_hot_sales.dart';

abstract class MarketRemoteDataSource {
  Future<BestSellerAndHotSelesModels> getBestSeller(String endpoint);
}
