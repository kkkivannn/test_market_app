// Flutter imports:
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:test_market_app/constants.dart';
import 'package:test_market_app/feature/presentation/pages/bag_page/controller/bag_page_cubit.dart';
import 'package:test_market_app/feature/presentation/pages/bag_page/controller/bag_page_state.dart';
import 'package:test_market_app/feature/presentation/pages/bag_page/widget/add_adress.dart';
import 'package:test_market_app/feature/presentation/pages/bag_page/widget/basket.dart';

import '../widget/my_cart_title.dart';

class BagPage extends StatelessWidget {
  const BagPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<BagPageCubit, BagPageState>(
      builder: (context, state) {
        if (state is BagPageEmptyState) {
          context
              .read<BagPageCubit>()
              .fetchBasket('53539a72-3c5f-4f30-bbb1-6ca10d42c149');
        } else if (state is BagPageErrorState) {
          return SafeArea(
            child: Scaffold(
              body: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const <Widget>[Text('Error!')],
                ),
              ),
            ),
          );
        } else if (state is BagPageLoadedState) {
          return SafeArea(
            child: Scaffold(
                body: Column(
              children: [
                const AddAdress(),
                const MyCartTitle(),
                Basket(
                  product: state.bagEntiti.basket,
                  total: state.bagEntiti.total,
                  delivery: state.bagEntiti.delivery,
                ),
              ],
            )),
          );
        }
        return SafeArea(
          child: Scaffold(
            body: Center(
              child: CircularProgressIndicator(
                color: kPrimaryColor,
              ),
            ),
          ),
        );
      },
    );
  }
}
