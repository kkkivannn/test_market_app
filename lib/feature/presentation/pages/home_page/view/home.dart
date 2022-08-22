// Flutter imports:
import 'package:flutter/material.dart';

// Project imports:
import '../../../../../theme/theme_data.dart';
import '../widget/home_screen.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Ecommerce Concept ',
      home: const HomeScreen(),
      theme: basicTheme(),
    );
  }
}
