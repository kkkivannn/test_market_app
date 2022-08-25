// Package imports:
import 'package:equatable/equatable.dart';

// Project imports:
import 'package:test_market_app/feature/domain/entities/product_entiti.dart';

class ProductPageState extends Equatable {
  @override
  List<Object?> get props => [];
}

class ProductPageEmptyState extends ProductPageState {
  @override
  List<Object?> get props => [];
}

class ProductPageLoadingState extends ProductPageState {
  final List<ProductEntiti> oldProduct;
  final bool isFirstFetch;

  ProductPageLoadingState(this.oldProduct, {required this.isFirstFetch});
  @override
  List<Object?> get props => [oldProduct];
}

class ProductPageLoadedState extends ProductPageState {
  final ProductEntiti productEntiti;

  ProductPageLoadedState(this.productEntiti);
  @override
  List<Object?> get props => [productEntiti];
}

class ProductPageErrorState extends ProductPageState {
  final String message;

  ProductPageErrorState({required this.message});
  @override
  List<Object?> get props => [message];
}
