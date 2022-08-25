// Package imports:
import 'package:flutter_bloc/flutter_bloc.dart';

// Project imports:
import 'package:test_market_app/constants.dart';
import 'package:test_market_app/feature/domain/usecases/get_product.dart';
import 'package:test_market_app/feature/presentation/pages/product_page/controller/product_page_state.dart';

class ProductPageCubit extends Cubit<ProductPageState> {
  final GetProduct getProduct;

  ProductPageCubit({required this.getProduct}) : super(ProductPageEmptyState());
  Future<void> fetchProduct(String endpoint) async {
    try {
      emit(ProductPageEmptyState());
      final loadedProductOfFailure = await getProduct(const EndpointParams(
          endpoint: "6c14c560-15c6-4248-b9d2-b4508df7d4f5"));
      loadedProductOfFailure.fold(
        (error) => emit(
          ProductPageErrorState(message: SERVER_FAILURE_MESSAGE),
        ),
        (loadedProduct) => emit(
          ProductPageLoadedState(loadedProduct),
        ),
      );
    } catch (_) {
      emit(ProductPageErrorState(message: SERVER_FAILURE_MESSAGE));
    }
  }
}
