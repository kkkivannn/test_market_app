import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:test_market_app/constants.dart';
import 'package:test_market_app/feature/domain/usecases/get_basket.dart';
import 'package:test_market_app/feature/presentation/pages/home_page/controller/home_screen_state.dart';

class HomeScreenCubit extends Cubit<HomeScreenState> {
  final GetBasket getBasket;

  HomeScreenCubit({required this.getBasket}) : super(HomeScreenEmptyState());
  Future<void> fetchBasket(String endpoint) async {
    try {
      emit(HomeScreenEmptyState());
      final loadedBestSellerOrFailure =
          await getBasket(EndpointParams(endpoint: endpoint));
      loadedBestSellerOrFailure.fold(
        (error) => emit(
          HomeScreenErrorState(message: SERVER_FAILURE_MESSAGE),
        ),
        (bestSellerAndHotSelesEntiti) => emit(
          HomeScreenLoadedState(bestSellerAndHotSelesEntiti),
        ),
      );
    } catch (_) {
      emit(HomeScreenErrorState(message: SERVER_FAILURE_MESSAGE));
    }
  }
}
