import 'package:flutter/material.dart';
import 'package:test_market_app/feature/presentation/pages/home_page/widget/custom_navigation_bar.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        bottomNavigationBar: const CustomNavigationBar(),
        body: Center(
          child: Text(
            'Select Category',
            style: Theme.of(context).textTheme.headline1,
          ),
        ),
      ),
    );
  }
}
