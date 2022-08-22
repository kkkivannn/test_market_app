// Package imports:
import 'package:dartz/dartz.dart';

// Project imports:
import 'package:test_market_app/core/error/failure.dart';
import 'package:test_market_app/feature/data/datasource/market_remote_data_source.dart';
import 'package:test_market_app/feature/data/models/best_seller_and_hot_sales.dart';
import 'package:test_market_app/feature/domain/entities/best_seller_and_hot_sales_entiti.dart';
import 'package:test_market_app/feature/domain/repositories/best_seller.dart';

class BestSellerRepositoryimpl implements BestSellerRepository {
  final MarketRemoteDataSource marketRemoteDataSource;
  BestSellerRepositoryimpl(this.marketRemoteDataSource);

  @override
  Future<Either<Failure, BestSellerAndHotSalesEntiti>> getBestSeller(
      String endpoint) async {
    return await _getBestSeller(
      () {
        return marketRemoteDataSource.getBestSeller(endpoint);
      },
    );
  }

  Future<Either<Failure, BestSellerAndHotSelesModels>> _getBestSeller(
      Future<BestSellerAndHotSelesModels> Function() bestSeller) async {
    try {
      final bestSellerModel = await bestSeller();
      return Right(bestSellerModel);
    } catch (e) {
      print(e);
      return Left(ServerFailure());
    }
  }
}
