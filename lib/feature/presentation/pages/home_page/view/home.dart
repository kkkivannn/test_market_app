import 'package:flutter/material.dart';

import '../widget/home_screen.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Ecommerce Concept ',
      home: HomeScreen(),
    );
  }
}
