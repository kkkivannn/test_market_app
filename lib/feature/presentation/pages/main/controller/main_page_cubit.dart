// Package imports:
import 'package:flutter_bloc/flutter_bloc.dart';

// Project imports:
import 'package:test_market_app/constants.dart';
import 'package:test_market_app/feature/domain/usecases/get_best_seller.dart';
import 'package:test_market_app/feature/presentation/pages/main/controller/main_page_state.dart';

class MainPageCubit extends Cubit<MainPageState> {
  final GetBestSeller getBestSeller;
  MainPageCubit({required this.getBestSeller}) : super(MainPageEmptyState());
  Future<void> fetchBestSeller(String endpoint) async {
    try {
      emit(MainPageEmptyState());
      final loadedBestSellerOrFailure =
          await getBestSeller(EndpointParams(endpoint: endpoint));
      loadedBestSellerOrFailure.fold(
        (error) => emit(
          const MainPageErrorState(message: SERVER_FAILURE_MESSAGE),
        ),
        (bestSellerAndHotSelesEntiti) => emit(
          MainPageLoadedState(bestSellerAndHotSelesEntiti),
        ),
      );
    } catch (_) {
      emit(const MainPageErrorState(message: SERVER_FAILURE_MESSAGE));
    }
  }
}
