import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';
import 'package:test_market_app/core/error/failure.dart';
import 'package:test_market_app/core/usecases/usecase.dart';
import 'package:test_market_app/feature/domain/entities/bag_entiti.dart';
import 'package:test_market_app/feature/domain/repositories/bag.dart';

class GetBasket implements UseCase<BagEntiti, EndpointParams> {
  final BagRepository bagRepository;

  GetBasket(this.bagRepository);

  @override
  Future<Either<Failure, BagEntiti>> call(EndpointParams params) async {
    return bagRepository.getBasket(params.endpoint);
  }
}

class EndpointParams extends Equatable {
  final String endpoint;
  const EndpointParams({required this.endpoint});
  @override
  List<Object?> get props => [endpoint];
}
