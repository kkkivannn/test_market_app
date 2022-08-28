// Flutter imports:
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

// Package imports:
import 'package:flutter_svg/svg.dart';

// Project imports:
import 'package:test_market_app/constants.dart';
import 'package:test_market_app/feature/presentation/pages/home_page/controller/home_screen_cubit.dart';
import 'package:test_market_app/feature/presentation/pages/home_page/controller/home_screen_state.dart';
import 'package:test_market_app/theme/icons.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return BlocBuilder<HomeScreenCubit, HomeScreenState>(
      builder: (context, state) {
        if (state is HomeScreenEmptyState) {
          context
              .read<HomeScreenCubit>()
              .fetchBasket('53539a72-3c5f-4f30-bbb1-6ca10d42c149');
        } else if (state is HomeScreenLoadedState) {
          return SafeArea(
            child: Scaffold(
              bottomNavigationBar: _currentIndex == 1
                  ? null
                  : Container(
                      width: size.width,
                      height: 70,
                      decoration: BoxDecoration(
                        color: kPrimaryColor,
                        borderRadius: const BorderRadius.only(
                          topLeft: Radius.circular(30),
                          topRight: Radius.circular(30),
                        ),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: List.generate(
                          4,
                          (index) => InkWell(
                            highlightColor: Colors.black,
                            splashColor: Colors.black,
                            onTap: () {
                              setState(() {
                                _currentIndex = index;
                              });
                            },
                            child: Row(
                              children: [
                                _currentIndex == index
                                    ? SvgPicture.asset(SvgImg.dot,
                                        color: Colors.white)
                                    : SizedBox(
                                        height: 40,
                                        width: 35,
                                        child: Stack(
                                          alignment: Alignment.center,
                                          children: [
                                            icons[index],
                                            if (index == 1)
                                              Align(
                                                alignment: Alignment.topRight,
                                                child: Container(
                                                  decoration: BoxDecoration(
                                                      color: kSecondaryColor,
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              40)),
                                                  child: Padding(
                                                    padding: const EdgeInsets
                                                        .symmetric(
                                                      horizontal: 6,
                                                      vertical: 2.5,
                                                    ),
                                                    child: Text(
                                                      state.bagEntiti.basket
                                                          .length
                                                          .toString(),
                                                      style: const TextStyle(
                                                        fontSize: 10,
                                                        color: Colors.white,
                                                        fontFamily: 'MarkPro',
                                                        fontWeight:
                                                            FontWeight.bold,
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                              )
                                          ],
                                        ),
                                      ),
                                const SizedBox(
                                  width: 7,
                                ),
                                Text(
                                  _currentIndex == index ? namePage[index] : '',
                                  style: const TextStyle(
                                      fontFamily: 'MarkPro',
                                      fontWeight: FontWeight.w700,
                                      color: Colors.white,
                                      fontSize: 15),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
              body: page[_currentIndex],
            ),
          );
        }
        return SafeArea(
          child: Scaffold(
            bottomNavigationBar: _currentIndex == 1
                ? null
                : Container(
                    width: size.width,
                    height: 70,
                    decoration: BoxDecoration(
                      color: kPrimaryColor,
                      borderRadius: const BorderRadius.only(
                        topLeft: Radius.circular(30),
                        topRight: Radius.circular(30),
                      ),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: List.generate(
                        4,
                        (index) => InkWell(
                          highlightColor: Colors.black,
                          splashColor: Colors.black,
                          onTap: () {
                            setState(() {
                              _currentIndex = index;
                            });
                          },
                          child: Row(
                            children: [
                              _currentIndex == index
                                  ? SvgPicture.asset(SvgImg.dot,
                                      color: Colors.white)
                                  : icons[index],
                              const SizedBox(
                                width: 7,
                              ),
                              Text(
                                _currentIndex == index ? namePage[index] : '',
                                style: const TextStyle(
                                    fontFamily: 'MarkPro',
                                    fontWeight: FontWeight.w700,
                                    color: Colors.white,
                                    fontSize: 15),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
            body: page[_currentIndex],
          ),
        );
      },
    );
  }
}
