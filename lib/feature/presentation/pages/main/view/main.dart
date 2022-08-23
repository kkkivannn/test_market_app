// Flutter imports:
import 'package:flutter/material.dart';

// Package imports:
import 'package:flutter_bloc/flutter_bloc.dart';

// Project imports:
import 'package:test_market_app/constants.dart';
import 'package:test_market_app/feature/presentation/pages/main/controller/main_page_cubit.dart';
import 'package:test_market_app/feature/presentation/pages/main/controller/main_page_state.dart';
import 'package:test_market_app/feature/presentation/pages/main/widget/card_category.dart';
import 'package:test_market_app/feature/presentation/pages/main/widget/card_phone.dart';
import 'package:test_market_app/feature/presentation/pages/main/widget/search_and_filter.dart';
import 'package:test_market_app/feature/presentation/pages/main/widget/select_category_title.dart';
import 'package:test_market_app/feature/presentation/pages/main/widget/town_selector.dart';

class MainPage extends StatelessWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<MainPageCubit, MainPageState>(
      builder: (context, state) {
        if (state is MainPageEmptyState) {
          context
              .read<MainPageCubit>()
              .fetchBestSeller('654bd15e-b121-49ba-a588-960956b15175');
        } else if (state is MainPageError) {
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
        } else if (state is MainPageLoaded) {
          return SafeArea(
            child: Scaffold(
              body: ListView(
                physics: const BouncingScrollPhysics(),
                padding: const EdgeInsets.symmetric(horizontal: 17),
                shrinkWrap: true,
                children: [
                  const TownSelector(),
                  const SelectCategoryTitle(),
                  const CardCategory(),
                  const SearchAndFilter(),
                  GridView.builder(
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      mainAxisSpacing: 20,
                      crossAxisSpacing: 20,
                      childAspectRatio: .7,
                    ),
                    itemCount: state
                        .bestSellerAndHotSalesEntiti.bestSellerModel.length,
                    itemBuilder: (context, index) {
                      return CardPhone(
                        name: state.bestSellerAndHotSalesEntiti
                            .bestSellerModel[index].name,
                        image: state.bestSellerAndHotSalesEntiti
                                    .bestSellerModel[index].name ==
                                'Samsung Note 20 Ultra'
                            ? "https://phonesdata.com/files/models/Samsung--Galaxy-Note20-Ultra-449.jpg"
                            : state.bestSellerAndHotSalesEntiti
                                .bestSellerModel[index].image,
                        discountPrice: state.bestSellerAndHotSalesEntiti
                            .bestSellerModel[index].discountPrice,
                        priceWithoutDiscount: state.bestSellerAndHotSalesEntiti
                            .bestSellerModel[index].priceWithoutDiscount,
                        isFavorit: state.bestSellerAndHotSalesEntiti
                            .bestSellerModel[index].isFavorites,
                      );
                    },
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
