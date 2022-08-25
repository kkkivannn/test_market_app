// Package imports:
import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';

// Project imports:
import 'package:test_market_app/core/error/failure.dart';
import 'package:test_market_app/core/usecases/usecase.dart';
import 'package:test_market_app/feature/domain/entities/product_entiti.dart';
import 'package:test_market_app/feature/domain/repositories/product.dart';

class GetProduct implements UseCase<ProductEntiti, EndpointParams> {
  final ProductRepository productRepository;
  GetProduct(this.productRepository);
  @override
  Future<Either<Failure, ProductEntiti>> call(EndpointParams params) {
    return productRepository.getProduct(params.endpoint);
  }
}

class EndpointParams extends Equatable {
  final String endpoint;
  const EndpointParams({required this.endpoint});
  @override
  List<Object?> get props => [endpoint];
}
