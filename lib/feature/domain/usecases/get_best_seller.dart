// Package imports:
import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';

// Project imports:
import 'package:test_market_app/core/error/failure.dart';
import 'package:test_market_app/core/usecases/usecase.dart';
import 'package:test_market_app/feature/domain/entities/best_seller_and_hot_sales_entiti.dart';
import 'package:test_market_app/feature/domain/repositories/best_seller.dart';

class GetBestSeller
    implements UseCase<BestSellerAndHotSalesEntiti, EndpointParams> {
  final BestSellerRepository bestSellerRepository;
  GetBestSeller(this.bestSellerRepository);
  @override
  Future<Either<Failure, BestSellerAndHotSalesEntiti>> call(
      EndpointParams params) async {
    return await bestSellerRepository.getBestSeller(params.endpoint);
  }
}

class EndpointParams extends Equatable {
  final String endpoint;
  const EndpointParams({required this.endpoint});
  @override
  List<Object?> get props => [endpoint];
}
