// Dart imports:
import 'dart:convert';

// Package imports:
import 'package:http/http.dart' as https;

// Project imports:
import 'package:test_market_app/constants.dart';
import 'package:test_market_app/core/error/exception.dart';
import 'package:test_market_app/feature/data/datasource/market_remote_data_source.dart';
import 'package:test_market_app/feature/data/models/best_seller_and_hot_sales.dart';

class MarketRemoteDataSourceImplement implements MarketRemoteDataSource {
  @override
  Future<BestSellerAndHotSelesModels> getBestSeller(String endpoint) async {
    Uri url = Uri.parse(baseUrl + endpoint);
    var response = await https.get(url);
    print(response.statusCode);
    print(response.body);
    if (response.statusCode == 200) {
      return BestSellerAndHotSelesModels.fromJson(jsonDecode(response.body));
    } else {
      throw ServerException();
    }
  }
}
