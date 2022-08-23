// Flutter imports:
import 'package:flutter/material.dart';

// Package imports:
import 'package:flutter_svg/svg.dart';

// Project imports:
import 'feature/presentation/pages/bag_page/view/bag.dart';
import 'feature/presentation/pages/like_page/view/like.dart';
import 'feature/presentation/pages/main/view/main.dart';
import 'feature/presentation/pages/profile_page/view/profile.dart';
import 'theme/icons.dart';

Color kBackgroundColor = const Color(0xffF8F8F8);
Color kPrimaryColor = const Color(0xff010035);
Color kSecondaryColor = const Color(0xffFF6E4E);

List<Widget> icons = [
  SvgPicture.asset(
    SvgImg.main,
    color: Colors.white,
    height: 18,
    width: 18,
  ),
  SvgPicture.asset(
    SvgImg.bag,
    color: Colors.white,
    height: 18,
    width: 18,
  ),
  SvgPicture.asset(
    SvgImg.like,
    color: Colors.white,
    height: 18,
    width: 18,
  ),
  SvgPicture.asset(
    SvgImg.profile,
    color: Colors.white,
    height: 18,
    width: 18,
  ),
];
const List<String> namePage = [
  'Explorer',
  'Basket',
  'Like',
  'Profile',
];

const List page = [MainPage(), BagPage(), LikePage(), ProfilePage()];

const String baseUrl = 'https://run.mocky.io/v3/';
const SERVER_FAILURE_MESSAGE = 'Server Failure';
const CACHED_FAILURE_MESSAGE = 'Cache Failure';
