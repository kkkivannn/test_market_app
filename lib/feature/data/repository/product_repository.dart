// Package imports:
import 'package:dartz/dartz.dart';

// Project imports:
import 'package:test_market_app/core/error/failure.dart';
import 'package:test_market_app/feature/data/models/product_model.dart';
import 'package:test_market_app/feature/domain/entities/product_entiti.dart';
import 'package:test_market_app/feature/domain/repositories/product.dart';
import '../datasource/market_remote_data_source.dart';

class ProductRepositoryImpl implements ProductRepository {
  final MarketRemoteDataSource marketRemoteDataSource;

  ProductRepositoryImpl(this.marketRemoteDataSource);
  @override
  Future<Either<Failure, ProductEntiti>> getProduct(String endpoint) async {
    return await _getProduct(() => marketRemoteDataSource.getProduct(endpoint));
  }

  Future<Either<Failure, ProductModel>> _getProduct(
      Future<ProductModel> Function() product) async {
    try {
      final productModel = await product();
      return Right(productModel);
    } catch (e) {
      return Left(ServerFailure());
    }
  }
}
