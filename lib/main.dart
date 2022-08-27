// Flutter imports:
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

// Package imports:
import 'package:flutter_bloc/flutter_bloc.dart';

// Project imports:
import 'package:test_market_app/feature/presentation/pages/home_page/view/home.dart';
import 'package:test_market_app/feature/presentation/pages/main/controller/main_page_cubit.dart';
import 'package:test_market_app/feature/presentation/pages/product_page/controller/product_page_cubit.dart';
import 'package:test_market_app/injection.container.dart';
import 'feature/presentation/pages/bag_page/controller/bag_page_cubit.dart';
import 'injection.container.dart' as di;

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations(
      [DeviceOrientation.portraitUp, DeviceOrientation.portraitDown]);
  await di.init();
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<MainPageCubit>(
          create: (context) => sl<MainPageCubit>(),
        ),
        BlocProvider<ProductPageCubit>(
          create: (context) => sl<ProductPageCubit>(),
        ),
        BlocProvider<BagPageCubit>(
          create: (context) => sl<BagPageCubit>(),
        ),
      ],
      child: const HomePage(),
    );
  }
}
