import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:test_market_app/constants.dart';
import 'package:test_market_app/feature/domain/usecases/get_basket.dart';

import 'bag_page_state.dart';

class BagPageCubit extends Cubit<BagPageState> {
  final GetBasket getBasket;
  BagPageCubit({required this.getBasket}) : super(BagPageEmptyState());
  Future<void> fetchBasket(String endpoint) async {
    try {
      emit(BagPageEmptyState());
      final loadedBestSellerOrFailure =
          await getBasket(EndpointParams(endpoint: endpoint));
      loadedBestSellerOrFailure.fold(
        (error) => emit(
          BagPageErrorState(message: SERVER_FAILURE_MESSAGE),
        ),
        (bestSellerAndHotSelesEntiti) => emit(
          BagPageLoadedState(bestSellerAndHotSelesEntiti),
        ),
      );
    } catch (_) {
      emit(BagPageErrorState(message: SERVER_FAILURE_MESSAGE));
    }
  }
}
