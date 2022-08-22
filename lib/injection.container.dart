// Package imports:
import 'package:get_it/get_it.dart';

// Project imports:
import 'package:test_market_app/feature/data/datasource/market_remote_data_source.dart';
import 'package:test_market_app/feature/data/datasource/market_remote_data_source_implement.dart';
import 'package:test_market_app/feature/data/repository/best_seller_repository.dart';
import 'package:test_market_app/feature/domain/repositories/best_seller.dart';
import 'package:test_market_app/feature/presentation/pages/main/controller/main_page_cubit.dart';
import 'feature/domain/usecases/get_best_seller.dart';

final sl = GetIt.asNewInstance();
Future<void> init() async {
  //Cubit
  sl.registerFactory(() => MainPageCubit(getBestSeller: sl()));
  //Usecases
  sl.registerLazySingleton(() => GetBestSeller(sl()));
  //Repository
  sl.registerLazySingleton<BestSellerRepository>(
      () => BestSellerRepositoryimpl(sl()));
  //DataSource
  sl.registerLazySingleton<MarketRemoteDataSource>(
      () => MarketRemoteDataSourceImplement());
}
