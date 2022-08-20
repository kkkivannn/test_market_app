import 'package:flutter/material.dart';
import 'package:test_market_app/constants.dart';

ThemeData basicTheme() => ThemeData(
      scaffoldBackgroundColor: kBackgroundColor,
      textTheme: TextTheme(
        headline1: TextStyle(
          fontFamily: 'MarkPro',
          fontWeight: FontWeight.w800,
          color: kPrimaryColor,
          fontSize: 25,
        ),
        headline2: TextStyle(
          fontFamily: 'MarkPro',
          fontSize: 12,
          fontWeight: FontWeight.w500,
          color: kPrimaryColor,
        ),
        // headline3: TextStyle(
        //   fontFamily: 'MarkPro',
        //   fontSize:
        // ),
      ),
    );
