// Flutter imports:
import 'package:flutter/material.dart';

// Package imports:
import 'package:flutter_bloc/flutter_bloc.dart';

// Project imports:
import 'package:test_market_app/feature/presentation/pages/home_page/view/home.dart';
import 'package:test_market_app/feature/presentation/pages/main/controller/main_page_cubit.dart';
import 'package:test_market_app/feature/presentation/pages/product_page/controller/product_page_cubit.dart';
import 'package:test_market_app/injection.container.dart';
import 'injection.container.dart' as di;

void main() async {
  await di.init();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<MainPageCubit>(
          create: (context) => sl<MainPageCubit>(),
        ),
        BlocProvider<ProductPageCubit>(
          create: (context) => sl<ProductPageCubit>(),
        )
      ],
      child: const HomePage(),
    );
  }
}
