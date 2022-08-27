import 'package:equatable/equatable.dart';
import 'package:test_market_app/feature/domain/entities/bag_entiti.dart';

abstract class BagPageState extends Equatable {
  @override
  List<Object?> get props => [];
}

class BagPageEmptyState extends BagPageState {
  @override
  List<Object?> get props => [];
}

class BagPageLoadedState extends BagPageState {
  final BagEntiti bagEntiti;

  BagPageLoadedState(this.bagEntiti);
  @override
  List<Object?> get props => [bagEntiti];
}

class BagPageErrorState extends BagPageState {
  final String message;
  BagPageErrorState({required this.message});
  @override
  List<Object?> get props => [message];
}
