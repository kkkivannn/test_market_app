// Flutter imports:
import 'package:flutter/material.dart';

// Package imports:
import 'package:flutter_bloc/flutter_bloc.dart';

// Project imports:
import 'package:test_market_app/constants.dart';
import 'package:test_market_app/feature/presentation/pages/product_page/controller/product_page_cubit.dart';
import 'package:test_market_app/feature/presentation/pages/product_page/controller/product_page_state.dart';
import 'package:test_market_app/feature/presentation/pages/product_page/widget/product_details.dart';
import 'package:test_market_app/feature/presentation/pages/product_page/widget/product_details_title.dart';
import '../widget/product_pageview.dart';

class ProductPage extends StatefulWidget {
  const ProductPage({Key? key}) : super(key: key);

  @override
  State<ProductPage> createState() => _ProductPageState();
}

class _ProductPageState extends State<ProductPage> {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ProductPageCubit, ProductPageState>(
      builder: (context, state) {
        if (state is ProductPageEmptyState) {
          context
              .read<ProductPageCubit>()
              .fetchProduct("6c14c560-15c6-4248-b9d2-b4508df7d4f5");
        } else if (state is ProductPageErrorState) {
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
        } else if (state is ProductPageLoadedState) {
          return SafeArea(
            child: Scaffold(
              body: Column(
                children: [
                  const ProductDetailsTitle(),
                  ProductPageview(
                    image: state.productEntiti.images,
                    count: state.productEntiti.images.length,
                  ),
                  ProductDetails(
                    isFavorite: state.productEntiti.isFavorites,
                    titleProduct: state.productEntiti.title,
                    ratingUsers: state.productEntiti.rating,
                    memory: state.productEntiti.sd,
                    sd: state.productEntiti.ssd,
                    camera: state.productEntiti.camera,
                    cpu: state.productEntiti.cpu,
                  ),
                ],
              ),
            ),
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
