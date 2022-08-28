import 'package:equatable/equatable.dart';
import 'package:test_market_app/feature/domain/entities/bag_entiti.dart';

abstract class HomeScreenState extends Equatable {
  @override
  List<Object?> get props => [];
}

class HomeScreenEmptyState extends HomeScreenState {
  @override
  List<Object?> get props => [];
}

class HomeScreenLoadedState extends HomeScreenState {
  final BagEntiti bagEntiti;

  HomeScreenLoadedState(this.bagEntiti);
  @override
  List<Object?> get props => [bagEntiti];
}

class HomeScreenErrorState extends HomeScreenState {
  final String message;

  HomeScreenErrorState({required this.message});

  @override
  List<Object?> get props => [message];
}
