import 'package:dartz/dartz.dart';
import 'package:test_market_app/core/error/failure.dart';
import 'package:test_market_app/feature/domain/entities/bag_entiti.dart';

abstract class BagRepository {
  Future<Either<Failure, BagEntiti>> getBasket(String endpoint);
}
