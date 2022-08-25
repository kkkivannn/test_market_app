// Package imports:
import 'package:get_it/get_it.dart';

// Project imports:
import 'package:test_market_app/feature/data/datasource/market_remote_data_source.dart';
import 'package:test_market_app/feature/data/datasource/market_remote_data_source_implement.dart';
import 'package:test_market_app/feature/data/repository/best_seller_repository.dart';
import 'package:test_market_app/feature/data/repository/product_repository.dart';
import 'package:test_market_app/feature/domain/repositories/best_seller.dart';
import 'package:test_market_app/feature/domain/repositories/product.dart';
import 'package:test_market_app/feature/domain/usecases/get_product.dart';
import 'package:test_market_app/feature/presentation/pages/main/controller/main_page_cubit.dart';
import 'package:test_market_app/feature/presentation/pages/product_page/controller/product_page_cubit.dart';
import 'feature/domain/usecases/get_best_seller.dart';

final sl = GetIt.asNewInstance();
Future<void> init() async {
  //Cubit
  sl.registerFactory(() => MainPageCubit(getBestSeller: sl()));
  sl.registerFactory(() => ProductPageCubit(getProduct: sl()));
  //Usecases
  sl.registerLazySingleton(() => GetBestSeller(sl()));
  sl.registerLazySingleton(() => GetProduct(sl()));
  //Repository
  sl.registerLazySingleton<BestSellerRepository>(
      () => BestSellerRepositoryimpl(sl()));
  sl.registerLazySingleton<ProductRepository>(
      () => ProductRepositoryImpl(sl()));
  //DataSource
  sl.registerLazySingleton<MarketRemoteDataSource>(
      () => MarketRemoteDataSourceImplement());
}
