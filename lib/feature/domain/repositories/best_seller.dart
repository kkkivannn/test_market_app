// Package imports:
import 'package:dartz/dartz.dart';

// Project imports:
import 'package:test_market_app/core/error/failure.dart';
import 'package:test_market_app/feature/domain/entities/best_seller_and_hot_sales_entiti.dart';

abstract class BestSellerRepository {
  Future<Either<Failure, BestSellerAndHotSalesEntiti>> getBestSeller(
      String endpoint);
}
