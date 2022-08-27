import 'package:dartz/dartz.dart';
import 'package:test_market_app/core/error/failure.dart';
import 'package:test_market_app/feature/data/datasource/market_remote_data_source.dart';
import 'package:test_market_app/feature/data/models/bag_model.dart';
import 'package:test_market_app/feature/domain/entities/bag_entiti.dart';
import 'package:test_market_app/feature/domain/repositories/bag.dart';

class BageRepositoryImpl implements BagRepository {
  final MarketRemoteDataSource marketRemoteDataSource;

  BageRepositoryImpl(this.marketRemoteDataSource);
  @override
  Future<Either<Failure, BagEntiti>> getBasket(String endpoint) async {
    return await _getBasket(() => marketRemoteDataSource.getBasket(endpoint));
  }

  Future<Either<Failure, BagModel>> _getBasket(
      Future<BagModel> Function() basket) async {
    try {
      final bagModel = await basket();
      return Right(bagModel);
    } catch (e) {
      return Left(ServerFailure());
    }
  }
}
