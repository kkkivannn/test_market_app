// Package imports:
import 'package:equatable/equatable.dart';

// Project imports:
import 'package:test_market_app/feature/domain/entities/best_seller_and_hot_sales_entiti.dart';

abstract class MainPageState extends Equatable {
  const MainPageState();
  @override
  List<Object?> get props => [];
}

class MainPageEmptyState extends MainPageState {
  @override
  List<Object?> get props => [];
}

class MainPageLoadingState extends MainPageState {
  final List<BestSellerAndHotSalesEntiti> oldBestSeller;
  final bool isFirstFetch;

  const MainPageLoadingState(this.oldBestSeller, {this.isFirstFetch = false});
  @override
  List<Object?> get props => [oldBestSeller];
}

class MainPageLoaded extends MainPageState {
  final BestSellerAndHotSalesEntiti bestSellerAndHotSalesEntiti;
  const MainPageLoaded(this.bestSellerAndHotSalesEntiti);
  @override
  List<Object?> get props => [bestSellerAndHotSalesEntiti];
}

class MainPageError extends MainPageState {
  final String message;
  const MainPageError({required this.message});
  @override
  List<Object?> get props => [message];
}
