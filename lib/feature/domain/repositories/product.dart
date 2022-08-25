// Package imports:
import 'package:dartz/dartz.dart';

// Project imports:
import 'package:test_market_app/core/error/failure.dart';
import 'package:test_market_app/feature/domain/entities/product_entiti.dart';

abstract class ProductRepository {
  Future<Either<Failure, ProductEntiti>> getProduct(String endpoint);
}
