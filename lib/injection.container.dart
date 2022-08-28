// Package imports:
import 'package:get_it/get_it.dart';

// Project imports:
import 'package:test_market_app/feature/data/datasource/market_remote_data_source.dart';
import 'package:test_market_app/feature/data/datasource/market_remote_data_source_implement.dart';
import 'package:test_market_app/feature/data/repository/bag_repository_impl.dart';
import 'package:test_market_app/feature/data/repository/best_seller_repository.dart';
import 'package:test_market_app/feature/data/repository/product_repository.dart';
import 'package:test_market_app/feature/domain/repositories/bag.dart';
import 'package:test_market_app/feature/domain/repositories/best_seller.dart';
import 'package:test_market_app/feature/domain/repositories/product.dart';
import 'package:test_market_app/feature/domain/usecases/get_basket.dart';
import 'package:test_market_app/feature/domain/usecases/get_product.dart';
import 'package:test_market_app/feature/presentation/pages/bag_page/controller/bag_page_cubit.dart';
import 'package:test_market_app/feature/presentation/pages/home_page/controller/home_screen_cubit.dart';
import 'package:test_market_app/feature/presentation/pages/main/controller/main_page_cubit.dart';
import 'package:test_market_app/feature/presentation/pages/product_page/controller/product_page_cubit.dart';
import 'feature/domain/usecases/get_best_seller.dart';

final sl = GetIt.asNewInstance();
Future<void> init() async {
  //Cubit
  sl.registerFactory(() => MainPageCubit(getBestSeller: sl()));
  sl.registerFactory(() => ProductPageCubit(getProduct: sl()));
  sl.registerFactory(() => BagPageCubit(getBasket: sl()));
  sl.registerFactory(() => HomeScreenCubit(getBasket: sl()));
  //Usecases
  sl.registerLazySingleton(() => GetBestSeller(sl()));
  sl.registerLazySingleton(() => GetProduct(sl()));
  sl.registerLazySingleton(() => GetBasket(sl()));
  //Repository
  sl.registerLazySingleton<BestSellerRepository>(
      () => BestSellerRepositoryimpl(sl()));
  sl.registerLazySingleton<ProductRepository>(
      () => ProductRepositoryImpl(sl()));
  sl.registerLazySingleton<BagRepository>(() => BageRepositoryImpl(sl()));
  //DataSource
  sl.registerLazySingleton<MarketRemoteDataSource>(
      () => MarketRemoteDataSourceImplement());
}
